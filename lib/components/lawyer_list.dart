import 'package:app/data/data_texts.dart';
import 'package:flutter/material.dart';

import '../data/team_data.dart';
import 'lawyer_card.dart';

class LawyerList extends StatelessWidget {
  LawyerList({super.key});

  final List<Team> data = teamData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return LawyerCard(team: teamData[index]);
        },
        itemCount: data.length,
      ),
    );
  }
}
