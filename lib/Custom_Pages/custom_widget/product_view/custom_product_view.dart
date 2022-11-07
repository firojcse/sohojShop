import 'package:flutter/material.dart';

Widget CustomProductView ({
 required dynamic ProductImage,
  required ProductImageUrl,
  required ProductName,
 required ProductPrice,
 required ProductPDis,
  required ProductDescrip,
}){



  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
              children: [
                Container(
                  height:210,
                  width: 160,
                ),
                Stack(
                  children: [
                    Stack(
                        children:[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),

                            ),
                            height:150,
                            width: 170,
                          child: Image.network(ProductImageUrl,fit: BoxFit.fill,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              height:30,


                              width: 30,
                              child: Icon(Icons.heart_broken_sharp,size: 30,color: Colors.black54,),

                            ),
                          ),
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150,
                          left: 10,
                          right: 10
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        height:60,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                                child: Text(ProductName)),
                            Padding(
                              padding: const EdgeInsets.only(left: 10
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text("৳ ${ProductPrice}"),
                                    SizedBox(width: 5,),
                                    Text("৳ ${ProductDescrip}",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,size: 18,),
                                    Icon(Icons.star,size: 18,),
                                    Icon(Icons.star,size: 18,),
                                    Icon(Icons.star,size: 18,),
                                    Icon(Icons.star,size: 18,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 185,left: 140,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        height:30,
                        width: 30,
                        child: Icon(Icons.shopping_cart_checkout_rounded,size: 20,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ]
          )
        ],
      ),
    ),
  );
}