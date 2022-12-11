import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/design_system.dart';
import 'package:helpdesk/features/create_ticket/bloc/create_ticket_bloc.dart';
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
                      errorStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(Icons.computer),
                      isDense: false,
                    ),
                    value: state.issue!.product,
                    items: Product.values
                        .map<DropdownMenuItem<Product>>((Product value) {
                      return DropdownMenuItem<Product>(
                        value: value,
                        child: Text(value.name),
                      );
                    }).toList(),
                    onChanged: (Product? value) {
                      if (value != null) {
                        BlocProvider.of<CreateTicketBloc>(context)
                            .add(CreateTicketEvent.productChanged(value));
                      }
                    }),
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
