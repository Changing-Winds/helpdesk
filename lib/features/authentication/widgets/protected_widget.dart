import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helpdesk/design_system/organisms/loading_view.dart';
import 'package:helpdesk/design_system/organisms/organisms.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:helpdesk/utils/config.dart';

// This widget can be placed above any other widget if the child Widget
// needs to be protected by Authentication
//
// It will handle the authentication flow if the user is not authenticated
// of show its child if the user is.
class ProtectedWidget extends StatelessWidget {
  const ProtectedWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Config config = BlocProvider.of<ApplicationBloc>(context).config;
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.authenticated:
            return child;
          case AuthenticationStatus.unknown:
            BlocProvider.of<AuthenticationBloc>(context)
                .add(AuthenticationChecked());
            return LoadingView(
              message: L10nString.of(context).authenticationChecking,
            );

          case AuthenticationStatus.unauthenticated:
          case AuthenticationStatus.failure:
            return ErrorView(
              icon: Icons.no_accounts_outlined,
              errorTitle: L10nString.of(context)
                  .authenticationUnauthenticatedErrorTitle,
              errorExplanation: L10nString.of(context)
                  .authenticationUnauthenticatedErrorExplanation(
                      config.googleHostedDomain!),
            );
          default:
            return LoadingView(
              message: L10nString.of(context).authenticationChecking,
            );
        }
      },
    );
  }
}
