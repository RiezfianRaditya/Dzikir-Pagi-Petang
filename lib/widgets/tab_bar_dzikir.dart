import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dzikir_pagi_petang/widgets/tab_bar_dzikir_pagi.dart';
import 'package:dzikir_pagi_petang/widgets/tab_bar_dzikir_petang.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class TabBarDzikir extends StatefulWidget {
  const TabBarDzikir({super.key});

  @override
  State<TabBarDzikir> createState() => _TabBarDzikirState();
}

class _TabBarDzikirState extends State<TabBarDzikir> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.42,
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ButtonsTabBar(
              backgroundColor: kPrimaryColor,
              unselectedBackgroundColor: Colors.grey[300],
              unselectedLabelStyle: const TextStyle(color: Colors.black),
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: "Dzikir Pagi",
                ),
                Tab(
                  text: "Dzikir Petang",
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  TabBarDzikirPagi(),
                  TabBarDzikirPetang(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
