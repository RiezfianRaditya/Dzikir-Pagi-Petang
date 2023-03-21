import 'package:dzikir_pagi_petang/core.dart';
import 'package:dzikir_pagi_petang/widgets/bottom_nav.dart';
import 'package:dzikir_pagi_petang/widgets/tab_bar_dzikir.dart';
import 'package:dzikir_pagi_petang/widgets/title_text_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      35.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Assalamualaikum,\nRiezfian !',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Sudahkah anda berdzikir hari ini ?',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TitleTextTile(title: 'Dzikir Hari ini'),
              const TabBarDzikir(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
