import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class SearchNearbyItem extends StatelessWidget {
  final String title;
  final String location;
  final String distance;
  final String imageUrl;
  const SearchNearbyItem({
    super.key,
    required this.title,
    required this.location,
    required this.distance,
    required this.imageUrl,
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
              imageUrl,
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
                  title,
                  style: blackTextStyle.copyWith(
                    fontFamily: mediumText,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  location,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Text(
            '$distance km',
            style: orangeTextStyle,
          ),
        ],
      ),
    );
  }
}
