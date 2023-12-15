import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class SearchLastestItem extends StatelessWidget {
  final String title;
  const SearchLastestItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: whiteColor,
        border: Border.all(
          color: const Color(0xFFF1F1F1),
        ),
      ),
      child: Text(
        title,
        style: blackTextStyle,
      ),
    );
  }
}
