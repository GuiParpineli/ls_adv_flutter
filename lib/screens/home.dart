import 'package:app/components/atuations_list.dart';
import 'package:app/model/team.dart';
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
    const int tabsCount = 6;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/wpp.webp',
                    height: 45,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/instagram.webp',
                    height: 45,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/linkedin.webp',
                    height: 45,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          foregroundColor: Colors.white,
          elevation: 1,
          title: Image.asset(
            'assets/images/home_logo.png',
            height: 40,
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
        body: Stack(
          children: [
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: SizedBox(
                child: Image.asset(
                  'assets/images/background.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: TabBarView(
                children: <Widget>[
                  LawyerList(),
                  AtuationsList(),
                  AtuationsList(),
                  LawyerList(),
                  LawyerList(),
                  LawyerList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
