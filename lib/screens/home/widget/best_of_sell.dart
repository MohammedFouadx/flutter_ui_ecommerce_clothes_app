import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';
import 'package:ui_ecommerce_clothes_app/screens/home/widget/categories_list.dart';


class BestOfSell extends StatelessWidget {
  const BestOfSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clothes = Clothes.generateClothes();
    return Column(
      children: [
        CategoriesList(text: 'Best Of Sell',),
              Container(
               height: 300,
                child: ListView.separated(
                    itemBuilder: (context , index){
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(clothes[index].imgUrl , width: 80,),
                                  ),
                                  const SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text(
                                        clothes[index].title,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                       Text(
                                        clothes[index].subTitle,
                                        style: const TextStyle(
                                            height: 1.2,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        clothes[index].price,
                                        style: TextStyle(
                                            height: 1.2,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).primaryColor
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.9),
                                    shape: BoxShape.circle
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 15,
                                ),
                              ),

                            ),
                          ],
                        ) ,
                      );
                    },
                    separatorBuilder: (_,index) => const SizedBox(height: 10,),
                    itemCount: clothes.length
                ) ,
              ),
      ],
    );
  }

}
