import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/design_system.dart';
import 'package:helpdesk/features/create_ticket/bloc/create_ticket_bloc.dart';
import 'package:helpdesk/repositories/issue_repository/models/application.dart';
import 'package:helpdesk/repositories/issue_repository/models/product.dart';

class FeatureWizardView extends StatelessWidget {
  const FeatureWizardView({
    super.key,
    required this.onNextButtonTapped,
  });

  final VoidCallback onNextButtonTapped;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateTicketBloc, CreateTicketState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.status.isReady && state.issue != null) {
          List<Application> applications =
              Application.values.map((e) => e).toList();
          applications = applications
              .where((i) =>
                  i.product == state.issue!.product || i.product == Product.all)
              .toList();
          applications.sort((a, b) => a.nameFr.compareTo(b.nameFr));

          return Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  L10nString.of(context).impactedFeature,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                DropdownButtonFormField<Product>(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: kSmallPadding),
                    hintText: L10nString.of(context).affectedProduct,
                    labelText: L10nString.of(context).affectedProduct,
                    labelStyle: Theme.of(context).textTheme.labelLarge,
                    hintStyle: const TextStyle(
                      height: 2, // sets the distance between label and input
                    ),
                    // hintText: '',
                    errorStyle: const TextStyle(color: Colors.red),
                    prefixIcon: const Icon(Icons.web),
                    isDense: false,
                  ),
                  value: state.issue!.product,
                  items: Product.values
                      .map<DropdownMenuItem<Product>>((Product value) {
                    return DropdownMenuItem<Product>(
                      value: value,
                      child: Text(value.nameFr),
                    );
                  }).toList(),
                  onChanged: (Product? value) {
                    if (value != null) {
                      BlocProvider.of<CreateTicketBloc>(context)
                          .add(CreateTicketEvent.productChanged(value));
                    }
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: kPadding)),
                DropdownButtonFormField<Application>(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: kSmallPadding),
                    hintText: L10nString.of(context).application,
                    labelText: L10nString.of(context).application,
                    labelStyle: Theme.of(context).textTheme.labelLarge,
                    hintStyle: const TextStyle(
                      height: 2, // sets the distance between label and input
                    ),
                    // hintText: '',
                    errorStyle: const TextStyle(color: Colors.red),
                    prefixIcon: const Icon(Icons.apps_outlined),
                    isDense: false,
                  ),
                  value: state.issue!.application,
                  items: applications
                      .map<DropdownMenuItem<Application>>((Application value) {
                    return DropdownMenuItem<Application>(
                      value: value,
                      child: Text(value.nameFr),
                    );
                  }).toList(),
                  onChanged: (Application? value) {
                    if (value != null) {
                      BlocProvider.of<CreateTicketBloc>(context)
                          .add(CreateTicketEvent.applicationChanged(value));
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kPadding),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(state.issue!.createdAt.toString()),
                      PrimaryButton(
                        onPressed: onNextButtonTapped,
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }

        return const Center(child: Loading());
      },
    );
  }
}
