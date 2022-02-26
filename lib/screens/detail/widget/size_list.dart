import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  const SizeList({Key? key}) : super(key: key);

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = [
    "S","M" , "L" , "XL" , "XXL"
  ];
  int currentSelected= 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  currentSelected = index;
                });

              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: currentSelected==index
                      ? BorderRadius.circular(15)
                      : BorderRadius.zero,
                  color: currentSelected == index
                    ? Theme.of(context).accentColor
                      :Colors.transparent

                ),
                child: Text(
                  sizeList[index],
                  style: TextStyle(
                    color: currentSelected == index
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_ , index) => const SizedBox(width: 10,),
          itemCount: sizeList.length),
    );
  }
}
