import 'package:dzikir_pagi_petang/core.dart';
import 'package:dzikir_pagi_petang/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/cover.JPG"),
                  fit: BoxFit.cover,
                  opacity: 0.8),
            ),
            child: null, // tidak ada widget di dalam container
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.20),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.90,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Dzikir Pagi\ndan Petang',
                  style: GoogleFonts.notoKufiArabic(
                      color: kSecondPrimaryColor,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      height: 0.80),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'Sesuai Sunnah dan hadist shohih',
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  height: 20,
                ),
                SliderButton(
                  action: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomePage())));
                  },
                  label: const Text(
                    "Swipe Untuk Melanjutkan !",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: const Center(
                      child: Icon(
                    Icons.login_outlined,
                    color: Colors.white,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),

                  //Put BoxShadow here
                  boxShadow: const BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),

                  //Adjust effects such as shimmer and flag vibration here
                  shimmer: true,
                  vibrationFlag: true,

                  width: MediaQuery.of(context).size.width,
                  radius: 10,
                  buttonColor: const Color.fromARGB(255, 216, 184, 121),
                  backgroundColor:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
                  highlightedColor: const Color.fromARGB(255, 210, 197, 98),
                  baseColor: const Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
