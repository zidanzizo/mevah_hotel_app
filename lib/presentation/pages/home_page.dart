import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/presentation/widgets/home_new_hotel_item.dart';
import 'package:mevah_hotel_app/presentation/widgets/home_recommended_hotel_item.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 175,
            color: blueColor,
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                topMenuSection(),
                balanceSection(context),
                recommendedHotelSection(),
                newHotelsExperienceSection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget newHotelsExperienceSection() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 50,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          // NOTE : NEW HOTEL EXPERIENCE TITLE
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'New Hotels Experience',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontFamily: semiBoldText,
                  ),
                ),
              ),
              Text(
                'View all',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontFamily: mediumText,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          // NOTE : NEW HOTELS EXPERIENCE ITEM
          const Column(
            children: [
              HomeNewHotelItem(),
              HomeNewHotelItem(),
              HomeNewHotelItem(),
            ],
          ),
        ],
      ),
    );
  }

  Widget recommendedHotelSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          // NOTE : RECOMMENDED TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Recommended Hotels',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontFamily: semiBoldText,
                    ),
                  ),
                ),
                Text(
                  'View all',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontFamily: mediumText,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          // NOTE : RECOMMENDED CARD ITEM
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                HomeRecommendedHotelItem(
                  imageUrl: 'assets/img_hotel1.png',
                  title: 'Bimosaurus Hotel',
                  location: 'Safari, Buitenzorg',
                  rating: '4.9',
                  price: '599,999',
                ),
                HomeRecommendedHotelItem(
                  imageUrl: 'assets/img_hotel2.png',
                  title: 'Daino Sas Hotel',
                  location: 'Bali, Denpasar',
                  rating: '4.9',
                  price: '559,999',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget balanceSection(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width - (2 * 24),
      margin: const EdgeInsets.only(top: 26),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.2),
            offset: const Offset(1, 0),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Balance',
                style: greyTextStyle,
              ),
              Text(
                'IDR 9.200.301',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontFamily: semiBoldText,
                ),
              )
            ],
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: whiteBlueColor,
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_plus.png',
                width: 12,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget topMenuSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: lightBlueColor,
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_menu.png',
                width: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Discover',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontFamily: semiBoldText,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: lightBlueColor,
            ),
            child: Center(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/icon_notif.png',
                    width: 16,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF2735B),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
