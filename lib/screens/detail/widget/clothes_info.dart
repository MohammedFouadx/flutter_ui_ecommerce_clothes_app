import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/detail/widget/size_list.dart';


class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  const ClothesInfo( this.clothes , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${clothes.title}  ${clothes.subTitle}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5 , bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Theme.of(context).primaryColor,
                ),
                const Text('4.5 (2.7K)' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),)
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                   text: 'Shop boohoo range of women and mens clothing for the latest fashion trends you can totally do your thing in, with 100s of new styles landing every day! ',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  height: 1.5
                )),
                    TextSpan(
                      text: "Read more",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor
                      )
                    )
              ]
            ),
          ),
         const SizeList(),
        ],
      ),
    );
  }
}
