import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/atoms/wizard_progress_indicator.dart';
import 'package:helpdesk/features/create_ticket/bloc/create_ticket_bloc.dart';
import 'package:helpdesk/features/create_ticket/views/wizard/details_view.dart';
import 'package:helpdesk/features/create_ticket/views/wizard/done_view.dart';
import 'package:helpdesk/features/create_ticket/views/wizard/environment_view.dart';
import 'package:helpdesk/features/create_ticket/views/wizard/feature_view.dart';

class CreateTicketView extends StatefulWidget {
  const CreateTicketView({Key? key}) : super(key: key);

  @override
  State<CreateTicketView> createState() => _CreateTicketViewState();
}

class _CreateTicketViewState extends State<CreateTicketView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int totalSteps = 4;
    int currentStep = 1;

    void closeWizard() {
      // Navigator.pop(context);
    }

    void nextPage() {
      currentStep++;
      BlocProvider.of<CreateTicketBloc>(context)
          .add(const CreateTicketEvent.nextStepRequested());

      // BlocProvider.of<PointGoalSettingBloc>(context)
      //     .add(PointGoalSettingNextStepRequested());
    }

    return BlocConsumer<CreateTicketBloc, CreateTicketState>(
      listener: (context, state) {
        if (state.status.isReady) {
          _pageController.animateToPage(state.currentStep - 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: const [
              CloseButton(),
            ],
            centerTitle: false,
            title: Text(
              L10nString.of(context).newTicket,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: kPadding),
              //   child: Text(
              //     L10nString.of(context).newTicket,
              //     style: Theme.of(context).textTheme.headlineMedium,
              //   ),
              // ),
              WizardProgressionIndicator(
                totalSteps: totalSteps,
                currentStep: currentStep,
                isCompact: true,
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[
                    FeatureWizardView(
                      onNextButtonTapped: nextPage,
                    ),
                    DetailsWizardView(
                      onNextButtonTapped: nextPage,
                    ),
                    EnvironmentWizardView(
                      onNextButtonTapped: nextPage,
                    ),
                    DoneWizardView(
                      onNextButtonTapped: closeWizard,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
