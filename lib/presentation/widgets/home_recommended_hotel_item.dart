import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class HomeRecommendedHotelItem extends StatelessWidget {
  final String title;
  final String location;
  final String rating;
  final String price;
  final String imageUrl;
  const HomeRecommendedHotelItem({
    super.key,
    required this.title,
    required this.location,
    required this.rating,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 280,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 24),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontFamily: mediumText,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_gps.png',
                          width: 16,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          location,
                          style: greyTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    rating,
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
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 0,
            color: Color(0xFFEEEEEE),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price Start from:',
                style: greyTextStyle,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'IDR $price',
                      style: primaryTextStyle.copyWith(
                        fontFamily: semiBoldText,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '/night',
                      style: greyTextStyle.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
