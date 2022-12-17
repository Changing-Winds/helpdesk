import 'package:flutter/cupertino.dart';
import 'package:helpdesk/design_system/design_system.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/application/views/unknown_screen.dart';
import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:helpdesk/features/home/views/home_screen.dart';
import 'package:helpdesk/features/ticket/ticket_screen.dart';
import 'package:helpdesk/repositories/connectivity_repository/connectivity_repository.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';

class HelpdeskApp extends StatelessWidget {
  HelpdeskApp({
    super.key,
    required this.config,
  });
  // Contains basic UI, Behavior and Info needed
  // to customise this app
  final Config config;

  // Use of the router here will almow deep links
  // or manually sharing urls of the tickets or comments in the web version
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/ticket/:slug',
        pageBuilder: (
          BuildContext context,
          GoRouterState state,
        ) =>
            CupertinoPage<void>(
          key: state.pageKey,
          child: TicketScreen(ticketSlug: state.params['slug']!),
        ),
      ),
      GoRoute(
        path: '/api/:api/:tag/:method',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            CupertinoPage<void>(
          key: state.pageKey,
          child: TicketScreen(
            ticketSlug: state.params['ticket']!,
            commentSlug: state.params['comment']!,
          ),
        ),
      ),
    ],
    errorBuilder: (context, state) => const UnknownScreen(),
  );

  @override
  Widget build(BuildContext context) {
    List<LocalizationsDelegate> localizationDelegates = const [
      L10nString.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];

    List<Locale> supportedLocales = const [
      Locale('en', 'US'),
      Locale('en', 'GB'),
      Locale('fr', 'FR'),
    ];

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ConnectivityRepository>(
            lazy: false, create: (context) => ConnectivityRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              lazy: false,
              create: (BuildContext context) =>
                  AuthenticationBloc(config)..add(AuthenticationInited())),
          BlocProvider<ApplicationBloc>(
            create: (context) =>
                ApplicationBloc(config)..add(const ApplicationEvent.started()),
            lazy: false,
          ),
        ],
        child: BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (context, state) {
            Config config = BlocProvider.of<ApplicationBloc>(context).config;

            switch (state.status) {
              case ApplicationStatus.ready:
                return MaterialApp.router(
                  routerConfig: _router,
                  title: config.helpdeskName,
                  theme: lightTheme(),
                  darkTheme: darkTheme(),
                  localizationsDelegates: localizationDelegates,
                  supportedLocales: supportedLocales,
                );

              case ApplicationStatus.failed:
                return MaterialApp(
                  title: 'Error',
                  theme: lightTheme(),
                  darkTheme: darkTheme(),
                  localizationsDelegates: localizationDelegates,
                  supportedLocales: supportedLocales,
                  home: Scaffold(
                    body: Center(
                      child: ErrorView(
                        icon: Icons.dangerous_outlined,
                        errorTitle: 'A fatal error\nhas occurred',
                        errorExplanation: state.failure?.toString(),
                      ),
                    ),
                  ),
                );
              default:
                return MaterialApp(
                  title: config.helpdeskName,
                  theme: lightTheme(),
                  darkTheme: darkTheme(),
                  localizationsDelegates: localizationDelegates,
                  supportedLocales: supportedLocales,
                  home: const Scaffold(
                    body: Center(
                      child: Loading(),
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child)
          // =>
          // FadeTransition(opacity: animation, child: child),
          {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
