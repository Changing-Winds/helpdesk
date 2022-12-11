import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'dart:ui' as ui;
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/create_ticket/views/create_ticket_screen.dart';
import 'package:helpdesk/features/dashboard/views/dashboard_screen.dart';
import 'package:helpdesk/features/home/bloc/home_bloc.dart';
import 'package:helpdesk/features/tickets/views/tickets_screen.dart';
import 'package:helpdesk/features/your_tickets/views/your_tickets_screen.dart';
import 'package:helpdesk/models/models.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Config config = BlocProvider.of<ApplicationBloc>(context).config;
    bool isLargeScreen = false;

    List<HelpdeskScreen> screens = [
      HelpdeskScreen(
        title: L10nString.of(context).newTicket,
        icon: Icons.add,
        screen: const CreateTicketScreen(),
      ),
      HelpdeskScreen(
        title: L10nString.of(context).dashboard,
        icon: Icons.dashboard,
        screen: const DashboardScreen(),
      ),
      HelpdeskScreen(
        title: L10nString.of(context).yourOpenedTickets,
        icon: Icons.label_important,
        screen: const YourTicketsScreen(),
      ),
      HelpdeskScreen(
        title: L10nString.of(context).allOpenedTickets,
        icon: Icons.list,
        screen: const TicketsScreen(),
      ),
    ];

    return BlocBuilder<ApplicationBloc, ApplicationState>(
        builder: (context, applicationState) {
      return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return OrientationBuilder(builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }
          return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                elevation: 10.0,
                leading: isLargeScreen
                    ? IconButton(
                        iconSize: 32.0,
                        icon: applicationState.isDrawerVisible
                            ? const Icon(Icons.menu_open)
                            : const Icon(Icons.menu),
                        onPressed: () {
                          BlocProvider.of<ApplicationBloc>(context).add(
                              ApplicationEvent.drawerVisibilityChanged(
                                  !applicationState.isDrawerVisible));
                        },
                      )
                    : null,
                leadingWidth: 50.0,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    config.helpdeskLogo != null
                        ? kIsWeb
                            ? Image.network(
                                'assets/assets/${config.helpdeskLogo!}',
                                height: kToolbarHeight - 30.0,
                              )
                            : Image.asset(
                                'assets/${config.helpdeskLogo!}',
                                height: kToolbarHeight - 30.0,
                              )
                        : const Icon(Icons.cloud),
                    const SizedBox(width: 10.0),
                    Text(config.helpdeskName),
                  ],
                ),
                centerTitle: config.centerHelpdeskName,
              ),
              bottomNavigationBar: !isLargeScreen
                  ? BottomNavigationBar(
                      elevation: 8.0,
                      currentIndex: _selectedIndex,
                      type: BottomNavigationBarType.fixed,
                      useLegacyColorScheme: false,
                      onTap: (int index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      items: screens
                          .map((e) => BottomNavigationBarItem(
                              icon: Icon(e.icon), label: e.title))
                          .toList(),
                    )
                  : null,
              body: Container(
                color: Theme.of(context).colorScheme.background,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: isLargeScreen
                              ? applicationState.isDrawerVisible
                                  ? 300
                                  : 80
                              : 0),
                      child: screens[_selectedIndex].screen,
                    ),
                    isLargeScreen
                        ? SizedBox(
                            width: applicationState.isDrawerVisible ? 300 : 80,
                            child: NavigationRail(
                              elevation: 4.0,
                              // leading: applicationState.isDrawerVisible
                              //     ? Padding(
                              //         padding: const EdgeInsets.all(4.0),
                              //         child: ElevatedButton.icon(
                              //             onPressed: () {},
                              //             icon: const Icon(
                              //               Icons.add,
                              //               size: 30.0,
                              //             ),
                              //             label: Padding(
                              //               padding: const EdgeInsets.symmetric(
                              //                   vertical: 8.0),
                              //               child: Text('New Ticket',
                              //                   style: Theme.of(context)
                              //                       .textTheme
                              //                       .bodyLarge),
                              //             )),
                              //       )
                              //     : IconButton(
                              //         icon: const Icon(Icons.add),
                              //         iconSize: 30.0,
                              //         onPressed: () {},
                              //       ),
                              selectedIndex: _selectedIndex,
                              extended: applicationState.isDrawerVisible,
                              destinations:
                                  screens.map((e) => e.destination).toList(),
                              labelType: NavigationRailLabelType.none,
                              useIndicator: true,
                              unselectedLabelTextStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.5)),
                              selectedLabelTextStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                              // unselectedIconTheme: IconThemeData(size: 20),
                              // selectedIconTheme: IconThemeData(
                              //     color: Colors.red, opacity: 1.0, size: 30),
                              onDestinationSelected: (int index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                            ),
                          )
                        : Container()
                  ],
                ),
              ));
        });
      });
    });
  }
}
