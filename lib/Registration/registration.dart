// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sohoj_shop/Custom_Pages/custom_widget/custom_elevated_button.dart';
// import 'package:sohoj_shop/Registration/Country/county_model.dart';
//
// class RegistrationForm extends StatefulWidget {
//   const RegistrationForm({Key? key}) : super(key: key);
//
//   @override
//   State<RegistrationForm> createState() => _RegistrationFormState();
// }
//
// class _RegistrationFormState extends State<RegistrationForm> {
//   GlobalKey<FormState> fornkey = GlobalKey<FormState>();
//   TextEditingController nameCon = TextEditingController();
//   TextEditingController phoneCon = TextEditingController();
//   TextEditingController gmailCon = TextEditingController();
//   TextEditingController imageUrlCon = TextEditingController();
//   TextEditingController passwordCon = TextEditingController();
//   TextEditingController passwordConfromCon = TextEditingController();
//
//   String name = "";
//   String mail = "";
//   String phone = "";
//   String imageUrl = "";
//   String password = "";
//   String passwordConfrom = "";
//   String selectGender = "Select";
//   List<String> gender = ["Select", "Male", "Female", "Others"];
//   List<CountryNameNumber> cunNN = CounNaNu.contrynammenumber();
//
//   dynamic passwordvisible = true;
//   dynamic gmailrequrement = "@gmail.com";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         title: Text('Create Registretion Form'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 15, bottom: 15),
//             child: Column(
//               children: [
//                 Container(
//                   height: 600,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Form(
//                     key: fornkey,
//                     child: Container(
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           top: 10,
//                           left: 50,
//                           right: 50,
//                         ),
//                         child: Column(
//                           children: [
//                             Stack(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 30,
//                                   child: ClipOval(
//                                     child: Image.network(
//                                       'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/06/apple.png?auto=format&q=60&fit=max&w=930',
//                                     ),
//                                   ),
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     //imagePicker();
//                                   },
//                                   child: Icon(
//                                     Icons.camera_alt,
//                                   ),
//                                 )
//                               ],
//                             ),
//                             _SpaceH10(),
//                             TextFormField(
//                               controller: nameCon,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: "Name",
//                                   hintText: "Name",
//                                   prefixIcon: Icon(Icons.person)),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return " * Required";
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                             ),
//                             _SpaceH10(),
//                             Container(
//                               height: 50,
//                               width: MediaQuery.of(context).size.width,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                 color: Colors.black54,
//                               )),
//                               child: Row(
//                                 children: [
//                                   Text("Select Your Gender"),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   // ElevatedButton(
//                                   //     onPressed: () {},
//                                   //     child: Container(
//                                   //       child: Row(
//                                   //         children: [
//                                   //           Container(
//                                   //             height: 20,
//                                   //             width: 30,
//                                   //             decoration: BoxDecoration(
//                                   //                 image: DecorationImage(
//                                   //                     image: AssetImage(
//                                   //                         "images/images.jpg"),
//                                   //                     fit: BoxFit.fill)),
//                                   //           )
//                                   //         ],
//                                   //       ),
//                                   //     )),
//                                   // ListTile(
//                                   //   title: Text(
//                                   //     // "widget._countryNameNumber.conSortName"
//                                   //     "DB"
//                                   //     , style: TextStyle(fontSize: 14),),
//                                   //   leading: Container(
//                                   //     height: 40,
//                                   //     width: 40,
//                                   //     decoration: BoxDecoration(
//                                   //         color: Colors.green,
//                                   //         image: DecorationImage(
//                                   //             image: AssetImage(
//                                   //                // " widget._countryNameNumber.conImage"
//                                   //                    "images/images.jpg"
//                                   //             ),
//                                   //         ),
//                                   //     ),
//                                   //     child: Text(
//                                   //         // widget._countryNameNumber.conSortNumber
//                                   //       "+880"
//                                   //     ),
//                                   //   ),
//                                   //   trailing: Text(" Numbercode", style: TextStyle(fontSize: 14),),
//                                   // ),
//                                   DropdownButton(
//                                       // value: SelectItem,
//                                       value: selectGender,
//                                       items: gender.map((String items) {
//                                         return DropdownMenuItem(
//                                             value: items,
//                                             child: Text(
//                                               items,
//                                               style: TextStyle(
//                                                   color: Colors.green),
//                                             ));
//                                       }).toList(),
//                                       onChanged: (String? newValue) {
//                                         setState(() {
//                                           selectGender = newValue!;
//                                           print(selectGender);
//                                         });
//                                       }),
//                                 ],
//                               ),
//                             ),
//                             _SpaceH10(),
//
//                             TextFormField(
//                               controller: phoneCon,
//                               maxLength: 11,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: "Phone",
//                                   hintText: "Phone",
//                                   prefixIcon: GestureDetector(
//                                       onTap: () {
//                                         alertDialog(context);
//                                       },
//                                       child: Icon(Icons.phone))
//                                   // prefix: Container(
//                                   //   height: 20,
//                                   //   width: 30,
//                                   //   color: Colors.green,
//                                   // )
//                                   ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return " * Required";
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                             ),
//                             _SpaceH10(),
//                             TextFormField(
//                               controller: gmailCon,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: "Gmail",
//                                   hintText: "Gmail",
//                                   prefixIcon: Icon(Icons.mail)),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return " * Required";
//                                 } else if (value != gmailrequrement) {
//                                   return "Please Enter @gmail.com";
//                                 }
//                                 // else if(value=="+,-,/,*"){}
//
//                                 // else if (value=="@gmail.com") {
//                                 //   return "Please Enter your write mail ";
//                                 // }
//
//                                 else {
//                                   return null;
//                                 }
//                               },
//
//                               // validator: (value) => !value!.contains("@gmail.com")?
//                               //     "* invalid email"
//                               //     :"",
//                             ),
//                             _SpaceH10(),
//                             TextFormField(
//                               controller: passwordCon,
//                               obscureText: passwordvisible,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: "Password",
//                                   hintText: "Password",
//                                   prefixIcon: Icon(Icons.lock),
//                                   suffixIcon: IconButton(
//                                       onPressed: () => setState(() =>
//                                           passwordvisible = !passwordvisible),
//                                       icon: Icon(
//                                         passwordvisible
//                                             ? Icons.visibility
//                                             : Icons.visibility_off,
//                                         color: Colors.blueAccent,
//                                       ))),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return " * Required";
//                                 }
//                                 // else if(value=="+,-,/,*"){}
//
//                                 else if (value.length < 6 ||
//                                     value.length > 15) {
//                                   return "Password Should be Lessthan 6 and greater than 15";
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                             ),
//                             _SpaceH10(),
//                             TextFormField(
//                               controller: passwordConfromCon,
//                               obscureText: passwordvisible,
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: "Conform Password",
//                                   hintText: "Conform Password",
//                                   prefixIcon: Icon(Icons.lock),
//                                   suffixIcon: IconButton(
//                                       onPressed: () => setState(() =>
//                                           passwordvisible = !passwordvisible),
//                                       icon: Icon(
//                                         passwordvisible
//                                             ? Icons.visibility
//                                             : Icons.visibility_off,
//                                         color: Colors.blueAccent,
//                                       ))),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return " * Required";
//                                 }
//                                 // else if(value=="+,-,/,*"){}
//
//                                 else if (value.length < 6 ||
//                                     value.length > 15) {
//                                   return "Password Should be Lessthan 6 and greater than 15";
//                                 } else if (value!= passwordCon.text) {
//                                   return "not match password ";
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                             ),
//                             // TextFormField(
//
//                             //   controller: passwordConfromCon,
//                             //   obscureText: passwordvisible,
//                             //   decoration: InputDecoration(
//                             //       border: OutlineInputBorder(),
//                             //       labelText: "Confrom Password",
//                             //       hintText: "Confrom Password",
//                             //       prefixIcon: Icon(Icons.lock),
//                             //       suffixIcon: IconButton(onPressed: ()=>setState(()=>passwordvisible=!passwordvisible),
//                             //           icon: Icon(
//                             //             passwordvisible? Icons.visibility:Icons.visibility_off,color: Colors.blueAccent,
//                             //           ))),
//                             //   validator: (value) {
//                             //     if (value!.isEmpty) {
//                             //        " * Required";
//                             //     }
//                             //     // else if(value==passwordCon ){
//                             //     //   return "password match";
//                             //     // }
//                             //     //
//                             //     // else if(value!=passwordCon){
//                             //     //    "password not match";
//                             //     // }
//                             //     // else if(value=="+,-,/,*"){}
//                             //
//                             //     else if (value.length < 6 ||
//                             //         value.length > 15) {
//                             //       return "Password Should be Lessthan 6 and greater than 15";
//                             //     }else if((value=passwordConfromCon.text)!=(passwordCon.text)){
//                             //       "not match password";
//                             //     }
//                             //
//                             //     else {
//                             //       return null;
//                             //     }
//                             //   },
//                             // ),
//                             _SpaceH10(),
//                             CustomeElevatedButtonn(
//                                 EleveteDWidth: 100,
//                                 EleveteFun: () {
//                                   if (fornkey.currentState!.validate()) {
//                                     //Register
//
//                                   } else {
//                                     print(
//                                         "${passwordCon.text} ${passwordConfromCon.text} ");
//                                     print("Not Validated");
//                                   }
//                                 },
//                                 ElevatedButtonName: "Login")
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Container(
//                 //
//                 //   height: 650,
//                 //   width: 300,
//                 //   decoration: BoxDecoration(
//                 //       color: Colors.grey[300],
//                 //       borderRadius: BorderRadius.circular(15)
//                 //   ),
//                 //   child: Column(
//                 //     children: [
//                 //       //Profile images
//                 //       Padding(
//                 //         padding: const EdgeInsets.only(top: 10),
//                 //         child: Container(
//                 //           decoration: BoxDecoration(
//                 //               color: Colors.white,
//                 //               borderRadius: BorderRadius.circular(100)),
//                 //           height: 90,
//                 //           width: 90,
//                 //           child: Icon(Icons.image, size: 50),
//                 //         ),
//                 //       ),
//                 //       // Text Filed
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(8.0),
//                 //         child: Container(
//                 //           child: TextField(
//                 //             obscureText: false,
//                 //             // maxLength: 11,
//                 //             controller: imageUrlCon,
//                 //             decoration: InputDecoration(
//                 //                 labelText: "ImageUrl",
//                 //                 hintText: "Enter your ImageUrl",
//                 //                 fillColor: Colors.grey.shade100,
//                 //                 filled: true,
//                 //                 prefixIcon: Icon(Icons.account_circle),
//                 //                 // suffixIcon: Icon(Icons.mail_outline),
//                 //                 border: OutlineInputBorder(
//                 //                   borderRadius: BorderRadius.circular(30),
//                 //                 )),
//                 //             keyboardType: TextInputType.name,
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(8.0),
//                 //         child: Container(
//                 //           child: TextField(
//                 //             obscureText: false,
//                 //             // maxLength: 11,
//                 //             controller: nameCon,
//                 //             decoration: InputDecoration(
//                 //                 labelText: "Name",
//                 //                 hintText: "Enter your Name",
//                 //                 fillColor: Colors.grey.shade100,
//                 //                 filled: true,
//                 //                 prefixIcon: Icon(Icons.account_circle),
//                 //                 // suffixIcon: Icon(Icons.mail_outline),
//                 //                 border: OutlineInputBorder(
//                 //                   borderRadius: BorderRadius.circular(30),
//                 //                 )),
//                 //             keyboardType: TextInputType.name,
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: nameCon, tLableText: "Name", tcolor: Colors.grey.shade100, thintText: "Enter Your Name", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.name),
//                 //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: gmailCon, tLableText: "gmail", tcolor: Colors.grey.shade100, thintText: "Enter Your Gmail", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.name),
//                 //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: phoneCon, tLableText: "Name", tcolor: Colors.grey.shade100, thintText: "Enter Your Phone", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.number),
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(8.0),
//                 //         child: Container(
//                 //           child: TextField(
//                 //             obscureText: false,
//                 //             // maxLength: 11,
//                 //             controller: gmailCon,
//                 //             decoration: InputDecoration(
//                 //                 labelText: "Email",
//                 //                 hintText: "Enter your email",
//                 //                 fillColor: Colors.grey.shade100,
//                 //                 filled: true,
//                 //                 prefixIcon: Icon(Icons.mail_outline),
//                 //                 // suffixIcon: Icon(Icons.mail_outline),
//                 //                 border: OutlineInputBorder(
//                 //                   borderRadius: BorderRadius.circular(30),
//                 //                 )),
//                 //             keyboardType: TextInputType.name,
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(8.0),
//                 //         child: Container(
//                 //           child: TextField(
//                 //             obscureText: false,
//                 //             maxLength: 11,
//                 //             controller: phoneCon,
//                 //             decoration: InputDecoration(
//                 //                 labelText: "Number",
//                 //                 hintText: "Enter your Phone Number",
//                 //                 fillColor: Colors.grey.shade100,
//                 //                 filled: true,
//                 //                 prefixIcon: Icon(Icons.phone),
//                 //                 // suffixIcon: Icon(Icons.mail_outline),
//                 //                 border: OutlineInputBorder(
//                 //                   borderRadius: BorderRadius.circular(30),
//                 //                 )),
//                 //             keyboardType: TextInputType.number,
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       //Gender
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(10),
//                 //         child: Container(
//                 //           height: 50,
//                 //           width: 200,
//                 //           color: Colors.white,
//                 //           child:Padding(
//                 //             padding: const EdgeInsets.all(8.0),
//                 //             child: Row(
//                 //               children: [
//                 //                 Text("Select Gender"),
//                 //                 SizedBox(
//                 //                   width: 10,
//                 //                 ),
//                 //                 DropdownButton(
//                 //                   // value: SelectItem,
//                 //                     value:selectGender,
//                 //                     items: gender.map((String items) {
//                 //                       return DropdownMenuItem(
//                 //                           value: items,
//                 //                           child: Text(items,style: TextStyle(color: Colors.green),));
//                 //                     }).toList(),
//                 //                     onChanged: (String? newValue){
//                 //                       setState(() {
//                 //                         selectGender=newValue!;
//                 //                         print(selectGender);
//                 //                       });
//                 //                     }),
//                 //               ],
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       //Division
//                 //       Padding(
//                 //         padding: const EdgeInsets.all(10),
//                 //         child: Container(
//                 //           height: 50,
//                 //           width: 300,
//                 //           color: Colors.white,
//                 //           child:Padding(
//                 //             padding: const EdgeInsets.all(8.0),
//                 //             child: Row(
//                 //               children: [
//                 //                 Text("Select Your Divisions"),
//                 //                 SizedBox(
//                 //                   width: 10,
//                 //                 ),
//                 //                 DropdownButton(
//                 //                   // value: SelectItem,
//                 //                     value:divisions,
//                 //                     items: div.map((String items) {
//                 //                       return DropdownMenuItem(
//                 //                           value: items,
//                 //                           child: Text(items,style: TextStyle(color: Colors.green),));
//                 //                     }).toList(),
//                 //                     onChanged: (String? newValue){
//                 //                       setState(() {
//                 //                         divisions=newValue!;
//                 //                         print(divisions);
//                 //                       });
//                 //                     }),
//                 //               ],
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //
//                 //       // Save Button
//                 //       Container(
//                 //         color: Colors.green,
//                 //         child: TextButton(
//                 //             onPressed: () {
//                 //               // print("Data pass");
//                 //               name = nameCon.text;
//                 //               mail = gmailCon.text;
//                 //               phone = phoneCon.text;
//                 //               imageUrl=imageUrlCon.text;
//                 //               registration.add(RegistrationInfo(
//                 //                 registration.length + 1,
//                 //                 name,
//                 //                 phone,
//                 //                 mail,
//                 //                 selectGender,
//                 //                 divisions,
//                 //                 imageUrl,
//                 //
//                 //               ));
//                 //
//                 //               setState(() {
//                 //                 Navigator.push(
//                 //                     context,
//                 //                     MaterialPageRoute(
//                 //                         builder: (context) => Text("Working")));
//                 //
//                 //                 // MakeUp(detailsOfMakeup:makeup[index]
//                 //               });
//                 //             },
//                 //             child: Text(
//                 //               "Save",
//                 //               style: TextStyle(color: Colors.white),
//                 //             )),
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   alertDialog(context) {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Column(
//               children: [
//                 Container(
//                   child: Text(
//                     "Please Select Your Country",
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ),
//                 _SpaceH10(),
//                 Container(
//                   height: 40,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Search......",
//                         hintStyle: TextStyle(fontSize: 14),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50))),
//                   ),
//                 ),
//                 _SpaceH10(),
//               ],
//             ),
//             actions: [
//               Container(
//                 width: 250,
//                 height: 400,
//                 color: Colors.white,
//                 child: ListView.builder(
//                     itemCount: cunNN.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return _buildList(context, cunNN[index], index);
//                     }),
//                 // ListView.builder(
//                 //     itemCount: 10,
//                 //     itemBuilder: (BuildContext context, int index){
//                 //       return Container(
//                 //         child: Row(
//                 //           children: [
//                 //             Padding(
//                 //               padding: const EdgeInsets.all(8.0),
//                 //               child: Container(
//                 //                 height: 40,
//                 //                 width: 50,
//                 //                 color: Colors.green,
//                 //               ),
//                 //             ),
//                 //             Text("Bangladesh"),
//                 //             Text("BD"),
//                 //             Text("+88"),
//                 //           ],
//                 //         ),
//                 //       );
//                 //     }),
//               )
//             ],
//           );
//         });
//   }
//
//   _buildList(BuildContext context, CountryNameNumber cn, int index) {
//     return GestureDetector(
//       onTap: () {
//         // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationForm(registrationInfo:cunNN[index],)));
//       },
//       child: ListTile(
//         title: Text(
//           "${cunNN[index].conName} ${cunNN[index].conSortName} ",
//           style: TextStyle(fontSize: 14),
//         ),
//         leading: Container(
//           height: 40,
//           width: 40,
//           decoration: BoxDecoration(
//               color: Colors.green,
//               image: DecorationImage(image: AssetImage(cunNN[index].conImage))),
//         ),
//         trailing: Text(
//           "${cunNN[index].conSortNumber} ",
//           style: TextStyle(fontSize: 14),
//         ),
//       ),
//     );
//   }
//
//   _SpaceH10() {
//     return SizedBox(
//       height: 10,
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sohoj_shop/Custom_Pages/custom_widget/custom_elevated_button.dart';
import 'package:sohoj_shop/Registration/Country/county_model.dart';
import 'package:sohoj_shop/Registration/RegiUserData/regi_user_data.dart';
import 'package:sohoj_shop/Registration/demo_view_page.dart';
import 'package:sohoj_shop/Registration/local_store/db_helper.dart';
import 'package:sohoj_shop/Registration/registration_model.dart';

class RegistrationForm extends StatefulWidget {

  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  GlobalKey<FormState> fornkey = GlobalKey<FormState>();
  TextEditingController imageUrlCon = TextEditingController();
  TextEditingController nameCon = TextEditingController();
  TextEditingController phoneCon = TextEditingController();
  TextEditingController gmailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController passwordConfromCon = TextEditingController();

  String imageUrlC = "";
  String name = "";
  String phone = "";
  String gmail = "";
  String password = "";
  String passwordConfrom = "";
  String selectGender = "Select";
  List<String> gender = ["Select", "Male", "Female", "Others"];
  List<CountryNameNumber> cunNN = CounNaNu.contrynammenumber();
  List<RegistrationInfo> regiInfo =[];

  dynamic passwordvisible=true;
  dynamic gmailrequrement="@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Create Registretion Form'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Column(
              children: [
                Container(
                  height: 650,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Form(
                    key: fornkey,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 50,
                          right: 50,
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: ClipOval(
                                    child: Image.network(
                                      'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/06/apple.png?auto=format&q=60&fit=max&w=930',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    //imagePicker();
                                  },
                                  child: Icon(
                                    Icons.camera_alt,
                                  ),
                                )
                              ],
                            ),
                            _SpaceH10(),
                            TextFormField(
                                controller: imageUrlCon,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Picture ImageUrl",
                                    hintText: "Picture ImageUrl",
                                    prefixIcon: Icon(Icons.person)),
                                // validator: (value)=>validateName(value),
                                // onSaved: (String? val){ name= val!;}
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return " * Required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            _SpaceH10(),
                            TextFormField(
                                controller: nameCon,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Name",
                                    hintText: "Name",
                                    prefixIcon: Icon(Icons.person)),
                                validator: (value)=>validateName(value),
                                onSaved: (String? val){ name= val!;}
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return " * Required";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                            _SpaceH10(),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54,)
                              ),
                              child: Row(
                                children: [
                                  Text("Select Your Gender"),
                                  SizedBox(width: 10,),
                                  // ElevatedButton(
                                  //     onPressed: () {},
                                  //     child: Container(
                                  //       child: Row(
                                  //         children: [
                                  //           Container(
                                  //             height: 20,
                                  //             width: 30,
                                  //             decoration: BoxDecoration(
                                  //                 image: DecorationImage(
                                  //                     image: AssetImage(
                                  //                         "images/images.jpg"),
                                  //                     fit: BoxFit.fill)),
                                  //           )
                                  //         ],
                                  //       ),
                                  //     )),
                                  // ListTile(
                                  //   title: Text(
                                  //     // "widget._countryNameNumber.conSortName"
                                  //     "DB"
                                  //     , style: TextStyle(fontSize: 14),),
                                  //   leading: Container(
                                  //     height: 40,
                                  //     width: 40,
                                  //     decoration: BoxDecoration(
                                  //         color: Colors.green,
                                  //         image: DecorationImage(
                                  //             image: AssetImage(
                                  //                // " widget._countryNameNumber.conImage"
                                  //                    "images/images.jpg"
                                  //             ),
                                  //         ),
                                  //     ),
                                  //     child: Text(
                                  //         // widget._countryNameNumber.conSortNumber
                                  //       "+880"
                                  //     ),
                                  //   ),
                                  //   trailing: Text(" Numbercode", style: TextStyle(fontSize: 14),),
                                  // ),
                                  DropdownButton(
                                    // value: SelectItem,
                                      value:selectGender,
                                      items: gender.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text(items,style: TextStyle(color: Colors.green),));
                                      }).toList(),
                                      onChanged: (String? newValue){
                                        setState(() {
                                          selectGender=newValue!;
                                          print(selectGender);
                                        });
                                      }),
                                ],
                              ),
                            ),
                            _SpaceH10(),

                            TextFormField(
                              controller: phoneCon,
                              maxLength: 11,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Phone",
                                  hintText: "Phone",
                                  prefixIcon: GestureDetector(
                                      onTap: () {
                                        alertDialog(context);
                                      },
                                      child: Icon(Icons.phone))
                                // prefix: Container(
                                //   height: 20,
                                //   width: 30,
                                //   color: Colors.green,
                                // )
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return " * Required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            _SpaceH10(),
                            TextFormField(
                                controller: gmailCon,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Gmail",
                                    hintText: "Gmail",
                                    prefixIcon: Icon(Icons.mail)),
                                validator: (value)=>validateEmail(value),
                                onSaved: (String? val){ gmail= val!;}
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return " * Required";
                              //   } else if(value!=gmailrequrement){
                              //     return "Please Enter @gmail.com";
                              //   }
                              //   // else if(value=="+,-,/,*"){}
                              //
                              //   // else if (value=="@gmail.com") {
                              //   //   return "Please Enter your write mail ";
                              //   // }
                              //
                              //   else {
                              //     return null;
                              //   }
                              // },

                              // validator: (value) => !value!.contains("@gmail.com")?
                              //     "* invalid email"
                              //     :"",
                            ),
                            _SpaceH10(),
                            TextFormField(
                                controller: passwordCon,
                                obscureText: passwordvisible,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Password",
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(onPressed: ()=>setState(()=>passwordvisible=!passwordvisible),
                                        icon: Icon(
                                          passwordvisible? Icons.visibility:Icons.visibility_off,color: Colors.blueAccent,
                                        ))


                                ),
                                // validator: (value)=>validatePW(value),
                                // onSaved: (String? val){ password= val!;}
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return " * Required";
                              //   }
                              //   // else if(value=="+,-,/,*"){}
                              //
                              //   else if (value.length < 6 ||
                              //       value.length > 15) {
                              //     return "Password Should be Lessthan 6 and greater than 15";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                            _SpaceH10(),
                            TextFormField(
                                controller: passwordConfromCon,
                                obscureText: passwordvisible,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Confrom Password",
                                    hintText: "Confrom Password",
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(onPressed: ()=>setState(()=>passwordvisible=!passwordvisible),
                                        icon: Icon(
                                          passwordvisible? Icons.visibility:Icons.visibility_off,color: Colors.blueAccent,
                                        ))),
                                // validator: (value)=>validateCPW(value),
                                // onSaved: (String? val){ passwordConfrom= val!;}
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //      " * Required";
                              //   }
                              //   // else if(value==passwordCon ){
                              //   //   return "password match";
                              //   // }
                              //   //
                              //   // else if(value!=passwordCon){
                              //   //    "password not match";
                              //   // }
                              //   // else if(value=="+,-,/,*"){}
                              //
                              //   else if (value.length < 6 ||
                              //       value.length > 15) {
                              //     return "Password Should be Lessthan 6 and greater than 15";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                            _SpaceH10(),
                            ElevatedButton(onPressed: (){

                              if (fornkey.currentState!.validate()) {
                                //Register
                                imageUrlC=imageUrlCon.text;
                                name=nameCon.text;
                                //gemder
                                phone=phoneCon.text;
                                gmail=gmailCon.text;
                                password=passwordCon.text;
                                passwordConfrom=passwordConfromCon.text;
                                Map<String, dynamic>UserRegistrationbody={

                                  "firstname":name,
                                  "lastname":selectGender,
                                  "mobileno":phone,
                                  "emailId":gmail,
                                  // "imageUrl":imageUrlC,
                                  // "name":name,
                                  // "mobile":phone,
                                  // "Gender":selectGender,
                                  // "password":password,
                                  // "conformPassword":passwordConfrom,
                                };
                                int rowCount=1;
                                RegiUserHelper.instance.insertStd(UserRegistrationbody);

                                print(' rowCount ${rowCount}');
                                if(rowCount==1){

                                  const snackBar = SnackBar(
                                    content: Text('Student has created !'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }else{
                                  const snackBar = SnackBar(
                                    content: Text(' Faild!'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }

                                registration.add(RegistrationInfo(
                                  registration.length + 1,
                                  imageUrlC,
                                    name,
                                    selectGender,
                                    phone,
                                    gmail,
                                    password,
                                    passwordConfrom,


                                ));
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>demo_view_page()));
                              }
                              else {
                                print("Not Validated");
                              }

                            }, child: Text("LogIn"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Container(
                //
                //   height: 650,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Colors.grey[300],
                //       borderRadius: BorderRadius.circular(15)
                //   ),
                //   child: Column(
                //     children: [
                //       //Profile images
                //       Padding(
                //         padding: const EdgeInsets.only(top: 10),
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(100)),
                //           height: 90,
                //           width: 90,
                //           child: Icon(Icons.image, size: 50),
                //         ),
                //       ),
                //       // Text Filed
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Container(
                //           child: TextField(
                //             obscureText: false,
                //             // maxLength: 11,
                //             controller: imageUrlCon,
                //             decoration: InputDecoration(
                //                 labelText: "ImageUrl",
                //                 hintText: "Enter your ImageUrl",
                //                 fillColor: Colors.grey.shade100,
                //                 filled: true,
                //                 prefixIcon: Icon(Icons.account_circle),
                //                 // suffixIcon: Icon(Icons.mail_outline),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(30),
                //                 )),
                //             keyboardType: TextInputType.name,
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Container(
                //           child: TextField(
                //             obscureText: false,
                //             // maxLength: 11,
                //             controller: nameCon,
                //             decoration: InputDecoration(
                //                 labelText: "Name",
                //                 hintText: "Enter your Name",
                //                 fillColor: Colors.grey.shade100,
                //                 filled: true,
                //                 prefixIcon: Icon(Icons.account_circle),
                //                 // suffixIcon: Icon(Icons.mail_outline),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(30),
                //                 )),
                //             keyboardType: TextInputType.name,
                //           ),
                //         ),
                //       ),
                //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: nameCon, tLableText: "Name", tcolor: Colors.grey.shade100, thintText: "Enter Your Name", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.name),
                //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: gmailCon, tLableText: "gmail", tcolor: Colors.grey.shade100, thintText: "Enter Your Gmail", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.name),
                //       // CoustomTextBoutton(ttrue: true, tMx11:20,tcontroller: phoneCon, tLableText: "Name", tcolor: Colors.grey.shade100, thintText: "Enter Your Phone", pIcon: Icons.account_circle, sIcon: Icons.ac_unit_outlined, TextInputType: TextInputType.number),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Container(
                //           child: TextField(
                //             obscureText: false,
                //             // maxLength: 11,
                //             controller: gmailCon,
                //             decoration: InputDecoration(
                //                 labelText: "Email",
                //                 hintText: "Enter your email",
                //                 fillColor: Colors.grey.shade100,
                //                 filled: true,
                //                 prefixIcon: Icon(Icons.mail_outline),
                //                 // suffixIcon: Icon(Icons.mail_outline),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(30),
                //                 )),
                //             keyboardType: TextInputType.name,
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Container(
                //           child: TextField(
                //             obscureText: false,
                //             maxLength: 11,
                //             controller: phoneCon,
                //             decoration: InputDecoration(
                //                 labelText: "Number",
                //                 hintText: "Enter your Phone Number",
                //                 fillColor: Colors.grey.shade100,
                //                 filled: true,
                //                 prefixIcon: Icon(Icons.phone),
                //                 // suffixIcon: Icon(Icons.mail_outline),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(30),
                //                 )),
                //             keyboardType: TextInputType.number,
                //           ),
                //         ),
                //       ),
                //       //Gender
                //       Padding(
                //         padding: const EdgeInsets.all(10),
                //         child: Container(
                //           height: 50,
                //           width: 200,
                //           color: Colors.white,
                //           child:Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Row(
                //               children: [
                //                 Text("Select Gender"),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 DropdownButton(
                //                   // value: SelectItem,
                //                     value:selectGender,
                //                     items: gender.map((String items) {
                //                       return DropdownMenuItem(
                //                           value: items,
                //                           child: Text(items,style: TextStyle(color: Colors.green),));
                //                     }).toList(),
                //                     onChanged: (String? newValue){
                //                       setState(() {
                //                         selectGender=newValue!;
                //                         print(selectGender);
                //                       });
                //                     }),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //       //Division
                //       Padding(
                //         padding: const EdgeInsets.all(10),
                //         child: Container(
                //           height: 50,
                //           width: 300,
                //           color: Colors.white,
                //           child:Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Row(
                //               children: [
                //                 Text("Select Your Divisions"),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 DropdownButton(
                //                   // value: SelectItem,
                //                     value:divisions,
                //                     items: div.map((String items) {
                //                       return DropdownMenuItem(
                //                           value: items,
                //                           child: Text(items,style: TextStyle(color: Colors.green),));
                //                     }).toList(),
                //                     onChanged: (String? newValue){
                //                       setState(() {
                //                         divisions=newValue!;
                //                         print(divisions);
                //                       });
                //                     }),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //
                //       // Save Button
                //       Container(
                //         color: Colors.green,
                //         child: TextButton(
                //             onPressed: () {
                //               // print("Data pass");
                //               name = nameCon.text;
                //               mail = gmailCon.text;
                //               phone = phoneCon.text;
                //               imageUrl=imageUrlCon.text;
                //               registration.add(RegistrationInfo(
                //                 registration.length + 1,
                //                 name,
                //                 phone,
                //                 mail,
                //                 selectGender,
                //                 divisions,
                //                 imageUrl,
                //
                //               ));
                //
                //               setState(() {
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => Text("Working")));
                //
                //                 // MakeUp(detailsOfMakeup:makeup[index]
                //               });
                //             },
                //             child: Text(
                //               "Save",
                //               style: TextStyle(color: Colors.white),
                //             )),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  alertDialog(context) {

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  child: Text("Please Select Your Country",style: TextStyle(fontSize: 14),),
                ),
                _SpaceH10(),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"Search......",hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        )
                    ),
                  ),
                ),
                _SpaceH10(),
              ],
            ),
            actions: [

              Container(
                width: 250,
                height: 400,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: cunNN.length,
                    itemBuilder: (BuildContext context, int index){
                      return _buildList(context, cunNN[index], index);

                    }),
                // ListView.builder(
                //     itemCount: 10,
                //     itemBuilder: (BuildContext context, int index){
                //       return Container(
                //         child: Row(
                //           children: [
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Container(
                //                 height: 40,
                //                 width: 50,
                //                 color: Colors.green,
                //               ),
                //             ),
                //             Text("Bangladesh"),
                //             Text("BD"),
                //             Text("+88"),
                //           ],
                //         ),
                //       );
                //     }),
              )
            ],
          );
        });
  }

  _buildList(BuildContext context, CountryNameNumber cn, int index){

    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationForm(registrationInfo:cunNN[index],)));
      },
      child: ListTile(
        title: Text("${cunNN[index].conName} ${cunNN[index].conSortName} ", style: TextStyle(fontSize: 14),),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: AssetImage(cunNN[index].conImage)
              )
          ),
        ),
        trailing: Text("${cunNN[index].conSortNumber} ", style: TextStyle(fontSize: 14),),
      ),
    );
  }

  _SpaceH10() {
    return SizedBox(
      height: 10,
    );
  }

  validateEmail(value){
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    }
    else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }
    else{
      return null;
    }
  }
 validateName(value){
    if (value.length==0){
      return "Name Is Required";
    }
    else if (value.length<2){
      return "Invalid Name";
    }
    else{
      return null;
    }
  }

  validatePW(value){
    String? pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
      return "Password Is Required";
    }

    else if(!regExp.hasMatch(value)){
      return "Invalid Password";
    }

    else {
      return null;
    }
  }

  validateCPW(value){
    String? pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
      return "Confirm Password Is Required";
    }

    else if(!regExp.hasMatch(value)){
      return "Invalid Confirm Password";
    }

    else if(passwordCon!=passwordConfrom){
      return"Please Make Sure Password Match";
    }

    else {
      return null;
    }

  }
}

