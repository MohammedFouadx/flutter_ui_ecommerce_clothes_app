import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/detail/widget/add_cart.dart';
import 'package:ui_ecommerce_clothes_app/screens/detail/widget/clothes_info.dart';
import 'package:ui_ecommerce_clothes_app/screens/detail/widget/detail_app_bar.dart';


class DetailScreen extends StatelessWidget {
  final Clothes clothes;
  const DetailScreen(this.clothes, {Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBart(clothes),
              ClothesInfo(clothes),
              AddCart(clothes),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      )
    );
  }
}
