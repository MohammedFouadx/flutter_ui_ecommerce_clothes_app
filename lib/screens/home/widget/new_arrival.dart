import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/categories_list.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/clothes_item.dart';


class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clothes = Clothes.generateClothes();
    return Container(
      child: Column(
        children: [
          CategoriesList(text: 'New Arrival',),
          Container(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context , index){
                  return ClothesItem(clothes[index]);
                },
                separatorBuilder: (_ , index) => const SizedBox(width: 20,),
                itemCount: clothes.length),
          )
        ],
      ),
    );
  }
}
