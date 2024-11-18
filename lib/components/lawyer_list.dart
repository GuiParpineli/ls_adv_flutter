import 'package:app/data/data_texts.dart';
import 'package:flutter/material.dart';

import '../data/team_data.dart';
import 'lawyer_card.dart';

class LawyerList extends StatelessWidget {
  LawyerList({super.key});

  final List<Team> data = teamData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Nossa equipe',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return LawyerCard(team: teamData[index]);
            },
            itemCount: data.length,
          ),
        ),
      ],
    );
  }
}