import 'package:animations/animations.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:helpdesk/features/authentication/widgets/protected_widget.dart';
import 'package:helpdesk/features/authentication/widgets/user_connection_status.dart';
import 'package:helpdesk/features/create_ticket/views/create_ticket_screen.dart';
import 'package:helpdesk/features/dashboard/views/dashboard_screen.dart';
import 'package:helpdesk/features/tickets/views/tickets_screen.dart';
import 'package:helpdesk/features/tickets/views/your_tickets_screen.dart';
import 'package:helpdesk/models/models.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config config = BlocProvider.of<ApplicationBloc>(context).config;
    bool isLargeScreen = false;

    List<HelpdeskTab> tabs = [
      HelpdeskTab(
        title: L10nString.of(context).dashboard,
        icon: Icons.dashboard,
        screen: const DashboardScreen(),
      ),
      HelpdeskTab(
        title: L10nString.of(context).yourOpenedTickets,
        icon: Icons.label_important,
        screen: const YourTicketsScreen(),
      ),
      HelpdeskTab(
        title: L10nString.of(context).allOpenedTickets,
        icon: Icons.list,
        screen: const TicketsScreen(),
      ),
    ];

    Widget openNewTicketScreen() {
      return !isLargeScreen
          ? OpenContainer(
              transitionDuration: const Duration(milliseconds: 350),
              useRootNavigator: true,
              closedColor: Colors.transparent,
              openColor: Theme.of(context).scaffoldBackgroundColor,
              middleColor: Colors.transparent,
              closedElevation: 0.0,
              openElevation: 0.0,
              closedBuilder: (context, openContainer) {
                return FloatingActionButton(
                  heroTag: '_FAB',
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  elevation: 8.0,
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    openContainer();
                  },
                  child: const Center(
                    child: Icon(Icons.add, size: 30.0),
                  ),
                );
              },
              openBuilder: (context, closedContainer) {
                return const CreateTicketScreen();
              })
          : Container();
    }

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, authState) {
        return BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (context, state) {
            return OrientationBuilder(
              builder: (context, orientation) {
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
                            icon: state.isDrawerVisible
                                ? const Icon(Icons.menu_open)
                                : const Icon(Icons.menu),
                            onPressed: () {
                              BlocProvider.of<ApplicationBloc>(context).add(
                                ApplicationEvent.drawerVisibilityChanged(
                                    !state.isDrawerVisible),
                              );
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
                    actions: const [
                      UserConnectionStatusView(),
                    ],
                  ),
                  bottomNavigationBar: authState.status ==
                          AuthenticationStatus.authenticated
                      ? !isLargeScreen
                          ? BottomNavigationBar(
                              elevation: 8.0,
                              currentIndex: state.selectedTab,
                              type: BottomNavigationBarType.fixed,
                              useLegacyColorScheme: false,
                              onTap: (int index) {
                                BlocProvider.of<ApplicationBloc>(context).add(
                                  ApplicationEvent.tabSelected(index),
                                );
                              },
                              items: tabs
                                  .map((e) => BottomNavigationBarItem(
                                      icon: Icon(e.icon), label: e.title))
                                  .toList(),
                            )
                          : null
                      : null,
                  floatingActionButton: openNewTicketScreen(),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.miniCenterDocked,
                  body: ProtectedWidget(
                    child: Container(
                      color: Theme.of(context).colorScheme.background,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: isLargeScreen
                                    ? state.isDrawerVisible
                                        ? 300
                                        : 80
                                    : 0),
                            child: tabs[state.selectedTab].screen,
                          ),
                          isLargeScreen
                              ? SizedBox(
                                  width: state.isDrawerVisible ? 300 : 80,
                                  child: NavigationRail(
                                    elevation: 4.0,
                                    leading: state.isDrawerVisible
                                        ? Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: ElevatedButton.icon(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    PageRouteBuilder(
                                                      opaque: false,
                                                      pageBuilder:
                                                          (BuildContext context,
                                                                  _, __) =>
                                                              Container(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .surface
                                                            .withOpacity(0.8),
                                                        child: const FractionallySizedBox(
                                                            widthFactor: 0.5,
                                                            heightFactor: 0.8,
                                                            alignment:
                                                                FractionalOffset
                                                                    .topCenter,
                                                            child: Material(
                                                                elevation: 10.0,
                                                                child:
                                                                    CreateTicketScreen())),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                  size: 30.0,
                                                ),
                                                label: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 8.0),
                                                  child: Text('New Ticket',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge),
                                                )),
                                          )
                                        : IconButton(
                                            icon: const Icon(Icons.add),
                                            iconSize: 30.0,
                                            onPressed: () {},
                                          ),
                                    selectedIndex: state.selectedTab,
                                    extended: state.isDrawerVisible,
                                    destinations:
                                        tabs.map((e) => e.destination).toList(),
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
                                              .withOpacity(0.5),
                                        ),
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
                                      BlocProvider.of<ApplicationBloc>(context)
                                          .add(
                                        ApplicationEvent.tabSelected(index),
                                      );
                                    },
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
