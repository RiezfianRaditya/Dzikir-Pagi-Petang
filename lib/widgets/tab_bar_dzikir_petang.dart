import 'package:flutter/material.dart';

import '../shared/theme.dart';

class TabBarDzikirPetang extends StatefulWidget {
  const TabBarDzikirPetang({super.key});

  @override
  State<TabBarDzikirPetang> createState() => _TabBarDzikirPetangState();
}

class _TabBarDzikirPetangState extends State<TabBarDzikirPetang> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
