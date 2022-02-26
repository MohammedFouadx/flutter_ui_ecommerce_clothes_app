import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/best_of_sell.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/categories_list.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/clothes_item.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/custom_app_bar.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/new_arrival.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/search_input.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomList = [
      'home' , 'menu' , 'heart' , 'user'
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SearchInput(),
              NewArrival(),
              BestOfSell(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items:
            bottomList.map((e) => BottomNavigationBarItem(
             label: e,
             icon: Image.asset('assets/icons/$e.png' , width: 25,)
            )
            ).toList()

        ),
      ),
    );
  }
}
