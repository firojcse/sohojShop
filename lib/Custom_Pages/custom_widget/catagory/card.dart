import 'package:flutter/material.dart';
Widget CustomCard({
      required PoroductImage,
      required ProductName,
      required ProductPrice,
      required ProductReting,
      required ProductPlusMin,
    }){
  return Container(
    height:180,
    width: 500,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black54)
    ),

    child: Container(

      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Row(

              children: [
                Container(
                  height: 160,
                  width: 200,
                  decoration:BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(PoroductImage),
                          fit:BoxFit.fill
                      )
                  ),
                ),

                SizedBox(width: 15,),
                Container(
                  height: 160,
                  width: 180,
                  color:Colors.white,
                  child:Padding(
                    padding: const EdgeInsets.only(
                        left: 2,top: 15
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(child: Text("ProductName",style:TextStyle(fontSize: 20,color: Colors.black54),)),
                          SizedBox(height: 10,),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(ProductPrice,style:TextStyle(fontSize: 20,color: Colors.red),)),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(ProductReting,style:TextStyle(fontSize: 20,color: Colors.red),)),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(ProductPlusMin,style:TextStyle(fontSize: 20,color: Colors.black),)),
                        ],
                      ),
                    ),
                  ),

                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [.5, .5],
                          colors: [Colors.red, Colors.white]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,right: 10),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.delete_forever_outlined,size: 30,color:
                      Colors.black54,),
                    ),
                  ),
                )



              ],
            ),

          ],
        ),
      ),
    ),
  );
}