part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged({
    required this.status,
    this.user,
  });

  final AuthenticationStatus status;
  final GoogleSignInAccount? user;

  @override
  List<Object> get props => [status];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {}

class AuthenticationChecked extends AuthenticationEvent {}

class AuthenticationInited extends AuthenticationEvent {}
