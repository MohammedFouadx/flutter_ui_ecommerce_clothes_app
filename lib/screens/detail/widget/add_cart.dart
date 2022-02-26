import 'package:flutter/material.dart';
import 'package:ui_ecommerce_clothes_app/models/clothes.dart';


class AddCart extends StatelessWidget {
  final Clothes clothes;
  const AddCart(this.clothes ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Price",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
              Text(
                clothes.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.5
                ),
              )
            ],
          ),
          const SizedBox(width: 20,),
          Expanded(
            child: Container(
              height: 60,
              child: TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
