import 'package:app/data/data_texts.dart';
import 'package:flutter/material.dart';

import '../components/lawyer_card.dart';
import '../components/lawyer_list.dart';

List<String> titles = <String>[
  'O Escritório',
  'Advogados',
  'Área de Atuação',
  'LS Digital',
  'Blog',
  'Contato',
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 6;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          elevation: 1,
          title: Image.asset(
            'assets/images/home_logo.png',
            height: 50,
            fit: BoxFit.fitHeight,
          ),
          centerTitle: true,
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: titles[0],
              ),
              Tab(
                text: titles[1],
              ),
              Tab(
                text: titles[2],
              ),
              Tab(
                text: titles[3],
              ),
              Tab(
                text: titles[4],
              ),
              Tab(
                text: titles[5],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: [
                const Text('Nossa Equipe',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: LawyerList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
