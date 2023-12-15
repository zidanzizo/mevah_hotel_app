import 'package:flutter/material.dart';
import 'package:mevah_hotel_app/presentation/widgets/search_lastest_item.dart';
import 'package:mevah_hotel_app/presentation/widgets/search_nearby_item.dart';
import 'package:mevah_hotel_app/shared/themes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: const EdgeInsets.all(24),
      children: [
        locationSection(),
        searchSection(),
        const Divider(
          color: Color(0xFFEEEEEE),
          height: 0,
        ),
        lastestSearchSection(),
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nearby You',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontFamily: semiBoldText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SearchNearbyItem(
                title: 'GH Setiabuddy',
                location: 'Setiabuddy, Bandung',
                distance: '0,1',
                imageUrl: 'assets/img_nearby1.png',
              ),
              const SearchNearbyItem(
                title: 'Damsaurus Hotel',
                location: 'Pasteur, Bandung',
                distance: '1,6',
                imageUrl: 'assets/img_nearby2.png',
              ),
              const SearchNearbyItem(
                title: 'Andjoy Hotel',
                location: 'Kebon Jaty, Bandung',
                distance: '2,2',
                imageUrl: 'assets/img_nearby3.png',
              ),
              const SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Load More',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontFamily: mediumText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget lastestSearchSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lastest Search',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontFamily: semiBoldText,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              SearchLastestItem(title: 'Mason'),
              SearchLastestItem(title: 'Swissbell'),
              SearchLastestItem(title: 'Yello'),
              SearchLastestItem(title: 'GH Setiabudi'),
              SearchLastestItem(title: 'Damoty Hotel'),
            ],
          ),
        ],
      ),
    );
  }

  Container searchSection() {
    return Container(
      height: 48,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/icon_search.png',
            width: 24,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              style: blackTextStyle,
              decoration: InputDecoration(
                hintText: 'Find your Favorite Hotels',
                hintStyle: greyTextStyle,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container locationSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Locations',
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          Row(
            children: [
              Text(
                'Bandung,',
                style: blackTextStyle.copyWith(
                  fontFamily: mediumText,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Indonesia',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontFamily: lightText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
