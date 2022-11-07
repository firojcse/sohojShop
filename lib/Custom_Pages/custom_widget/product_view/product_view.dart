import 'package:flutter/material.dart';
import 'package:sohoj_shop/All_Pages/productpages/product_add.dart';
import 'package:sohoj_shop/All_Pages/productpages/product_model_class.dart';

import 'custom_product_view.dart';
class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  List<ProductInfo>poin=productinfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"),),
      backgroundColor: Colors.grey,
      body:
      productinfo.length==0 ?
      Container(child: Text("Not fount Data",style: TextStyle(fontSize:20 ),),):
      GridView.builder(
        itemCount:poin.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              mainAxisExtent: 250
          ),

          itemBuilder: (context, index){
          return _buildProductInfo(productinfo[index],index);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductAdd()));
        },
        child:Text("Add",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}

_buildProductInfo(ProductInfo prod, int inx ){
  return CustomProductView(ProductImage: null,ProductName: prod.ProductName.toString(), ProductPrice: prod.ProductPrice, ProductPDis: prod.ProductDis,ProductDescrip: prod.ProductDescrip, ProductImageUrl: prod.ProductUrl);

}






// Container(
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       children: [
//         Stack(
//           children: [
//             Container(
//             height:210,
//             width: 170,
//           ),
//             Stack(
//               children: [
//                 Stack(
//                   children:[
//                     Container(
//                       decoration: BoxDecoration(
//                           color: Colors.red,
//                         borderRadius: BorderRadius.circular(5),
//                         image: DecorationImage(
//                           image: AssetImage("images/images.jpg"),
//                           fit: BoxFit.fill
//                         )
//                       ),
//                   height:160,
//                   width: 170,
//           ),
//                     Padding(
//                       padding: const EdgeInsets.all(7),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                           borderRadius: BorderRadius.circular(100)
//                         ),
//                   height:30,
//                   width: 30,
//                         child: Icon(Icons.heart_broken_sharp,size: 30,color: Colors.black54,),
//
//           ),
//                     ),
//                   ]
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 150,
//                     left: 10,
//                     right: 10
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                       borderRadius: BorderRadius.circular(5)
//                     ),
//                   height:60,
//                   width: 150,
//                     child: Column(
//                       children: [
//                         Text("WD-NY Black - Men's"),
//                         Text("Tk-500, Tk-900"),
//                         Container(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 30),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.star,size: 18,),
//                                 Icon(Icons.star,size: 18,),
//                                 Icon(Icons.star,size: 18,),
//                                 Icon(Icons.star,size: 18,),
//                                 Icon(Icons.star,size: 18,),
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//           ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 185,left: 145,
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.indigo,
//                         borderRadius: BorderRadius.circular(100)
//                     ),
//                     height:30,
//                     width: 30,
//                     child: Icon(Icons.shopping_cart_checkout_rounded,size: 20,color: Colors.white,),
//                   ),
//                 ),
//               ],
//             ),
//           ]
//         )
//       ],
//     ),
//   ),
// ),