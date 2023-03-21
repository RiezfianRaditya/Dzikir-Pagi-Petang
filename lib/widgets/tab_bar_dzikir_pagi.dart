import 'package:flutter/material.dart';

import '../shared/theme.dart';

class TabBarDzikirPagi extends StatefulWidget {
  const TabBarDzikirPagi({super.key});

  @override
  State<TabBarDzikirPagi> createState() => _TabBarDzikirPagiState();
}

class _TabBarDzikirPagiState extends State<TabBarDzikirPagi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.edit_note,
                      size: 54.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HR. Al Hakim (1: 562)',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Syaikh Al Albani menshahihkan hadits tersebut dalam Shahih At Targhib wa At Tarhib no. 655',
                            style: greyTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
