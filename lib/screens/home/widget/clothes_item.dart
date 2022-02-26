import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/detail/detail.dart';


class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  const ClothesItem(this.clothes , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(DetailScreen(clothes));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: 200,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                    image: DecorationImage(
                      image: AssetImage(clothes.imgUrl),
                      fit: BoxFit.fitHeight
                    )
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 15,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Text(
              clothes.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              clothes.subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              clothes.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Theme.of(context).primaryColor
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
