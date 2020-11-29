import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:profileapp/models/manageit.dart';

import '../constants.dart';

class SwiperIntro extends StatelessWidget {
  SwiperIntro();


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(kStartCyanColor.withOpacity(0.6), BlendMode.modulate),
          child: Stack(
            children: [
              Container(
                height: 200.0,
                child: Swiper(
                  itemCount: MangeIT.mangeITs.length,
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  autoplayDelay: 5000,
                  pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      activeColor:kStartCyanColor,
                      color: kBackGroundColor,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    var mangeIT = MangeIT.mangeITs[index];
                    return GestureDetector(
                      onTap: () {

                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1.0),
                        child: Image.asset(
                          mangeIT.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
