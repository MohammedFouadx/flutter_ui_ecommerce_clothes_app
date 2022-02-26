import 'package:flutter/material.dart';


class CategoriesList extends StatelessWidget {
  String text;
   CategoriesList({Key? key , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const  TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            children: [
              Text("View All" ,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
             const  SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor
                ),
                child: const  Icon(Icons.arrow_forward_ios , size: 15, color: Colors.white,),

              )
            ],
          )
        ],
      ),
    );
  }
}
