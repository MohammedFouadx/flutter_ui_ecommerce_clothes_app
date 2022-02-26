import 'package:flutter/material.dart';


class SearchInput extends StatelessWidget {
  List<String> filterList = [
    "Women",
    "T-Shirt",
    "Caps"
  ];
   SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25 , left: 25 , right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextFormField(
                  enableSuggestions: true,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search Aesthethic Shirt',
                    hintStyle: TextStyle(
                      color: Colors.grey[300]!,
                      fontSize: 18
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/icons/search.png' , width: 20,),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/icons/filter.png',
                  width: 25,
                )
              )
            ],
          ),
          Row(
            children: [
              ...filterList.map((e) =>
                   Container(
                     margin: const EdgeInsets.only(top: 10 , right: 10),
                     padding: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Theme.of(context).accentColor,
                     ),
                     child: Text(
                       e,
                       style: TextStyle(
                         color: Colors.grey
                       ),
                     ),
                   )
              ).toList()
            ],
          ),
        ],
      ),
    );
  }
}
