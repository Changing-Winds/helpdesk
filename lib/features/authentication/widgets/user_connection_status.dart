import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserConnectionStatusView extends StatelessWidget {
  const UserConnectionStatusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return state is AuthenticationAuthenticated && state.user != null
            ? Row(
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<AuthenticationBloc>(context)
                          .add(AuthenticationLogoutRequested());
                    },
                    icon: const Icon(Icons.logout),
                    tooltip: 'Log out',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundColor:
                          // state.user!.photoUrl != null
                          //     ? Colors.transparent
                          //     :
                          Theme.of(context).colorScheme.tertiaryContainer,
                      // backgroundImage: state.user!.photoUrl != null
                      //     ? NetworkImage(state.user!.photoUrl!)
                      //     : null,
                      child:
                          // state.user!.photoUrl == null
                          //     ?
                          Text((state.user!.displayName ?? 'User')
                              .toUpperCase()
                              .characters
                              .first)
                      // : Container()
                      ,
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
