part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  final AuthenticationStatus status;
  final GoogleSignInAccount? user;

  @override
  List<Object> get props => [status];

  @override
  String toString() => '$runtimeType { status: $status, user: $user }';
}

class AuthenticationUnknown extends AuthenticationState {
  const AuthenticationUnknown() : super();
}

class AuthenticationForbidden extends AuthenticationState {
  const AuthenticationForbidden() : super();
}

class AuthenticationCheckInProgress extends AuthenticationState {
  const AuthenticationCheckInProgress() : super();
}

class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated(user)
      : super(status: AuthenticationStatus.authenticated, user: user);
}

class AuthenticationUnauthenticated extends AuthenticationState {
  const AuthenticationUnauthenticated()
      : super(status: AuthenticationStatus.unauthenticated);
}

class AuthenticationFailure extends AuthenticationState {
  const AuthenticationFailure() : super(status: AuthenticationStatus.failure);
}
