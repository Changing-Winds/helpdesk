import 'dart:async';

import 'package:helpdesk/utils/config.dart';
import 'package:helpdesk/utils/prettier_logger/prettier_logger.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
  forbidden,
  failure,
}

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this.config) : super(const AuthenticationUnknown()) {
    googleSignIn = GoogleSignIn(
      hostedDomain: config.googleHostedDomain,
      clientId: config.googleClientID,
      scopes: <String>[
        'email',
      ],
    );
    on<AuthenticationChecked>(_onChecked);
    on<AuthenticationStatusChanged>(_onStatusChanged);
    on<AuthenticationLogoutRequested>(_onLogoutRequested);
    on<AuthenticationInited>(_onInited);
    _authenticationStatusSubscription = googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) {
      if (account == null) {
        add(const AuthenticationStatusChanged(
            status: AuthenticationStatus.unauthenticated));
      } else {
        String domain = account.email.split('@').last;

        if (domain != 'flatsy.fr') {
          add(const AuthenticationStatusChanged(
              status: AuthenticationStatus.forbidden));
        } else {
          add(AuthenticationStatusChanged(
              status: AuthenticationStatus.authenticated, user: account));
        }
      }
    });
  }
  final Config config;
  late GoogleSignIn googleSignIn;
  GoogleSignInAccount? currentUser;
  PrettierLogger logger = PrettierLogger('AuthB');
  // final LocalStorageRepository _localStorageRepository;
  late StreamSubscription<GoogleSignInAccount?>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();

    return super.close();
  }

  Future<void> _onStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationUnauthenticated());
      case AuthenticationStatus.forbidden:
        return emit(const AuthenticationForbidden());
      case AuthenticationStatus.authenticated:
        currentUser = event.user;
        return emit(AuthenticationAuthenticated(event.user));
      default:
        return emit(const AuthenticationUnknown());
    }
  }

  void _onLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    googleSignIn.disconnect();
    currentUser = null;
  }

  FutureOr<void> _onChecked(
      AuthenticationChecked event, Emitter<AuthenticationState> emit) async {
    if (currentUser != null) return;

    emit(const AuthenticationCheckInProgress());
    logger.v('🔒 Checking authentication...');

    try {
      await googleSignIn.signIn();
    } catch (error) {
      add(const AuthenticationStatusChanged(
          status: AuthenticationStatus.unauthenticated));
    }
  }

  FutureOr<void> _onInited(
      AuthenticationInited event, Emitter<AuthenticationState> emit) async {
    await googleSignIn.signInSilently();
  }
}
