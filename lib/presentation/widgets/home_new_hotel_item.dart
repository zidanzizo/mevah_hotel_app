import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class HomeNewHotelItem extends StatelessWidget {
  const HomeNewHotelItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/img_hotel3.png',
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Skytown Hotel',
                  style: blackTextStyle.copyWith(
                    fontFamily: mediumText,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Sibolga, Medan',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '4,9',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontFamily: mediumText,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
