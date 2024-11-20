import 'package:app/components/atuations_card.dart';
import 'package:app/model/atuation.dart';
import 'package:flutter/material.dart';

import '../data/atuation_data.dart';

class AtuationsList extends StatelessWidget {
  AtuationsList({super.key});

  final List<Atuation> atuations = atuationData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Areas de atuação',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return AtuationsCard(
                atuation: atuations[index],
              );
            },
            itemCount: atuations.length,
          ),
        ),
      ],
    );
  }
}
