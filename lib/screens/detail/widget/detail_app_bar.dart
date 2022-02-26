import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';

import 'color_picker.dart';

class DetailAppBart extends StatefulWidget {
  final Clothes clothes;
  const DetailAppBart(this.clothes, {Key? key}) : super(key: key);

  @override
  _DetailAppBartState createState() => _DetailAppBartState();
}

class _DetailAppBartState extends State<DetailAppBart> {
  List<Color> colors = [
    Color(0xff5902EC),
    Color(0xffE04DB0),
    Color(0xffF2C9E1),
    Color(0xffFFFA4D),
  ];
  CarouselController _carouselController = CarouselController();
  int _currentPage = 0;
  int _currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                  height: 500,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  }),
              items: widget.clothes.detailUrl
                  .map((e) => Builder(
                        builder: (context) => Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('$e'),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 160,
            child: Row(
              children: widget.clothes.detailUrl
                  .asMap()
                  .entries
                  .map((e) => GestureDetector(
                        onTap: () {
                          _carouselController.animateToPage(e.key);
                        },
                        child: Container(
                          width: 12,
                          height: 12,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(
                                  _currentPage == e.key ? 0.9 : 0.4)),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black.withOpacity(0.3)
              ),
              height: 175,
              width: 50,
              padding: const EdgeInsets.all(8),
              child: ListView.separated(
                padding:  EdgeInsets.zero,
                  itemBuilder: (context, index)
                     => GestureDetector(
                       onTap: (){
                         setState(() {
                           _currentColor = index;
                         });

                       },
                       child: ColorPicker(
                        outBorder: _currentColor == index,  color: colors[index],
                    ),
                     ),

                  separatorBuilder: (_, index) => const SizedBox(
                        height: 3,
                      ),
                  itemCount: colors.length),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              right: 25,
              left: 25
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Container(

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10),
                      child: Icon(
                       Icons.arrow_back_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
