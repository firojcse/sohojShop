import 'package:flutter/material.dart';

Widget AlCatagoryView ({
  required ProductImageUrl,
  required ProductName,
}){



  return Center(
    child: Container(
      height: 130,
      width: 110,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            child: Text("Images"),
            decoration: BoxDecoration(
                color: Colors.green,
              image: DecorationImage(
                image: AssetImage(ProductImageUrl),
                fit: BoxFit.fill

              )
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 20,
            color: Colors.green,

            child: Text(ProductName),
          ),
        ],
      ),
    ),
  );
}