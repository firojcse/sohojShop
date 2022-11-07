import 'package:flutter/material.dart';
import 'package:sohoj_shop/All_Pages/productpages/product_model_class.dart';
import 'package:sohoj_shop/Custom_Pages/custom_widget/product_view/product_view.dart';
class ProductAdd extends StatefulWidget {
  const ProductAdd({Key? key}) : super(key: key);

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  TextEditingController ProductNmaeCon=TextEditingController();
  TextEditingController ProductPriceCon=TextEditingController();
  TextEditingController ProductPDisCon=TextEditingController();
  TextEditingController ProductDescriptionCon=TextEditingController();
  TextEditingController ProducUrlCon=TextEditingController();
  String? name;
  String? price;
  String? pricedis;
  String? productDe;
  String? producturl;

  String currency="৳";
  List<String>currencyTk=['৳','€','£','₹','₿'];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Create Product"),),
      backgroundColor: Colors.grey[100],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100),

                            ),
                            child: Icon(Icons.camera_alt_outlined,size:50,),
                          ),
                        ),
                        // CustomTextButton(220,50, ProductNmaeCon,null, "Product Name"),
                        // CustomTextButton(220,50, ProductPriceCon,null, "Product Price"),
                        // CustomTextButton(220,50, ProductPDisCon,null, "Product Discount Price"),
                        // CustomTextButton(220,100, ProductDescriptionCon,null, "Product Description "),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: ProducUrlCon,
                            decoration:InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black),
                              ),
                              alignLabelWithHint: true,
                              hintText: "Product Url",hintStyle: TextStyle(fontSize: 14),
                              labelText: "Product Url",labelStyle: TextStyle(fontSize: 14),
                              // labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: ProductNmaeCon,
                            decoration:InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black)

                              ),
                              alignLabelWithHint: true,
                              hintText: "Name",hintStyle: TextStyle(fontSize: 14),
                              labelText: "Name",labelStyle: TextStyle(fontSize: 14),
                              // labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: ProductPriceCon,
                            decoration:InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black)

                              ),
                              alignLabelWithHint: true,
                              hintText: "Price",hintStyle: TextStyle(fontSize: 14),
                              labelText: "Price",labelStyle: TextStyle(fontSize: 14),
                              // labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  child: Text( currency,style: TextStyle(fontSize: 40),),),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: ProductPDisCon,
                            decoration:InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black)

                              ),
                              alignLabelWithHint: true,
                              hintText: "Discount Price",hintStyle: TextStyle(fontSize: 14),
                              labelText: "Discount Price",labelStyle: TextStyle(fontSize: 14),
                             prefixIcon: Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Container(
                                 height: 20,
                                 width: 30,
                                 child: Text( currency,style: TextStyle(fontSize: 40),),),
                             ),
                              // labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: ProductDescriptionCon,
                            decoration:InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black)

                              ),
                              alignLabelWithHint: true,
                              hintText: "Product Description",hintStyle: TextStyle(fontSize: 14),
                              labelText: "Product Description",labelStyle: TextStyle(fontSize: 14),
                              // labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          color: Colors.green,
                          child: TextButton(
                            onPressed: (){
                              // print("Hello");
                              name=ProductNmaeCon.text;
                              price=ProductPriceCon.text;
                              pricedis=ProductPDisCon.text;
                              productDe=ProductPDisCon.text;
                              producturl=ProducUrlCon.text;

                              productinfo.add(ProductInfo(
                                name,
                                price,
                                pricedis,
                                productDe,
                                currency,
                                producturl
                              ));
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                              });
                            },
                            child: Text("Add Product",style: TextStyle(fontSize: 22,color: Colors.white),),
                          ),
                        ),
                        Container(
                          color: Colors.green,
                          child: TextButton(
                            onPressed: (){
                              // print("Hello")
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                              });
                            },
                            child: Text("Home Page",style: TextStyle(fontSize: 22,color: Colors.white),),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
