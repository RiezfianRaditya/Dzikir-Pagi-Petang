import 'package:dzikir_pagi_petang/core.dart';
import 'package:flutter/material.dart';

class TitleTextTile extends StatefulWidget {
  final String title;
  const TitleTextTile({super.key, required this.title});

  @override
  State<TitleTextTile> createState() => _TitleTextTileState();
}

class _TitleTextTileState extends State<TitleTextTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
