// import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:helpdesk/design_system/organisms/helpdesk_page.dart';
import 'package:helpdesk/features/ticket/bloc/ticket_bloc.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:helpdesk/features/ticket/ticket_view.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen(
      {super.key,
      required this.ticketSlug,
      this.commentSlug,
      this.pageBuilderAnimation});

  final Animation<double>? pageBuilderAnimation;

  final String ticketSlug;
  final String? commentSlug;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  // Requesting the Ticket before the transition has occurred
  // creates some lags in the animation.
  // So we wait until the transition is done to load the spec.
  // This is why we use a StatefulWidget here, only to handle the animation
  bool? isTransitioning;

  @override
  Widget build(BuildContext context) {
    ModalRoute? route = ModalRoute.of(context);

    // Defining an internal function to be able to remove the listener
    void handler(status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isTransitioning = false;
        });
        route?.animation?.removeStatusListener(handler);
      } else {
        setState(() {
          isTransitioning = true;
        });
      }
    }

    route?.animation?.addStatusListener(handler);

    return isTransitioning != null && isTransitioning!
        ? HelpdeskPage.loading()
        : BlocProvider<TicketBloc>(
            lazy: false,
            create: (_) => TicketBloc(
                ticketSlug: widget.ticketSlug,
                commentSlug: widget.commentSlug,
                config: BlocProvider.of<ApplicationBloc>(context).config,
                authenticationBloc:
                    BlocProvider.of<AuthenticationBloc>(context))
              ..add(
                const TicketEvent.fetched(),
              ),
            child: const TicketView(),
          );
  }
}
