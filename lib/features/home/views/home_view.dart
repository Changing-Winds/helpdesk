import 'package:helpdesk/design_system/organisms/error_view.dart';
import 'package:helpdesk/design_system/organisms/helpdesk_page.dart';
import 'package:helpdesk/features/application/bloc/application_bloc.dart';
import 'package:helpdesk/features/home/bloc/home_bloc.dart';
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
  late Future<Map<String, dynamic>> doc;

  @override
  Widget build(BuildContext context) {
    Config config = BlocProvider.of<ApplicationBloc>(context).config;

    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, applicationState) {
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return HelpdeskPage(
              appBarTitle: Row(
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
              automaticallyShowBackButton: false,
              child: const ErrorView(
                icon: Icons.bedtime_outlined,
                errorTitle: 'Nothing to show yet',
              ),
            );
          },
        );
      },
    );
  }
}
