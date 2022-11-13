import 'package:helpdesk/design_system/design_system.dart';
import 'package:helpdesk/design_system/molecules/menu_item.dart';
import 'package:helpdesk/design_system/organisms/loading_view.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/authentication/widgets/user_connection_status.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HelpdeskPage extends StatelessWidget {
  const HelpdeskPage({
    super.key,
    this.appBarTitle,
    this.navigation,
    this.automaticallyShowBackButton = true,
    this.actionMenuItems,
    this.actionMenuCallback,
    required this.child,
  });
  final Widget child;
  final Widget? appBarTitle;
  final Widget? navigation;
  final bool automaticallyShowBackButton;
  final List<MenuItem>? actionMenuItems;
  final MenuItemVoidCallback? actionMenuCallback;

  HelpdeskPage.loading({
    super.key,
    this.automaticallyShowBackButton = true,
    String? message,
  })  : appBarTitle = null,
        navigation = null,
        actionMenuItems = [],
        actionMenuCallback = null,
        child = LoadingView(
          message: message,
        );

  HelpdeskPage.error({
    super.key,
    this.automaticallyShowBackButton = true,
    IconData? icon,
    String? errorTitle,
    String? errorExplanation,
  })  : appBarTitle = null,
        navigation = null,
        actionMenuItems = [],
        actionMenuCallback = null,
        child = ErrorView(
          icon: icon,
          errorTitle: errorTitle,
          errorExplanation: errorExplanation,
        );

  @override
  Widget build(BuildContext context) {
    Config config = BlocProvider.of<ApplicationBloc>(context).config;
    bool isLargeScreen = false;

    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, appState) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            elevation: 4.0,
            leading: automaticallyShowBackButton
                ? IconButton(
                    icon: const Icon(Icons.navigate_before),
                    onPressed: () {
                      if (GoRouter.of(context).canPop()) {
                        GoRouter.of(context).pop();
                      } else {
                        GoRouter.of(context).go('/');
                      }
                    },
                  )
                : Container(),
            leadingWidth: automaticallyShowBackButton ? 40.0 : 0.0,
            title: appBarTitle,
            centerTitle: config.centerHelpdeskName,
            automaticallyImplyLeading: false,
            actions: [
              if (actionMenuItems != null && actionMenuItems!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: PopupMenuButton<String>(
                      onSelected: actionMenuCallback,
                      itemBuilder: (BuildContext context) {
                        return actionMenuItems!.map((MenuItem item) {
                          return PopupMenuItem<String>(
                            value: item.label,
                            child: item,
                          );
                        }).toList();
                      },
                      child: const Icon(Icons.more_vert)),
                ),
              const UserConnectionStatusView(),
            ],
          ),
          body: OrientationBuilder(builder: (context, orientation) {
            if (MediaQuery.of(context).size.width > 600) {
              isLargeScreen = true;
            } else {
              isLargeScreen = false;
            }
            return Container(
              color: Theme.of(context).colorScheme.surface,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      appState.isDrawerVisible
                          ? Expanded(
                              child: Drawer(
                                  elevation: 1.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: navigation ?? Container()),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                        child: AppVersionView(),
                                      )
                                    ],
                                  )))
                          : Container(),
                      isLargeScreen
                          ? Flexible(
                              flex: 5,
                              child: child,
                            )
                          : Container(),
                    ],
                  ),
                  IconButton(
                    icon: appState.isDrawerVisible
                        ? const Icon(Icons.menu_open)
                        : const Icon(Icons.menu),
                    onPressed: () {
                      BlocProvider.of<ApplicationBloc>(context).add(
                          ApplicationEvent.drawerVisibilityChanged(
                              !appState.isDrawerVisible));
                    },
                  ),
                ],
              ),

              // isDrawerVisible
              //     ? Expanded(
              //         child: Drawer(
              //           elevation: 1,
              //           child: Align(
              //             alignment: Alignment.bottomLeft,
              //             child: Padding(
              //               padding: const EdgeInsets.only(
              //                 left: 20.0,
              //                 bottom: 20.0,
              //               ),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: const [
              //                   UserConnectionStatusView(),
              //                   Padding(
              //                     padding: EdgeInsets.only(
              //                       top: 10.0,
              //                     ),
              //                     child: AppVersionView(),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : Container(),
              // Flexible(
              //   flex: 5,
              //   child: child,
              // ),
            );
          }),
        );
      },
    );
  }
}
