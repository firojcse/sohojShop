import 'package:flutter/material.dart';
import 'package:sohoj_shop/Registration/RegiUserData/regi_user_data.dart';
import 'package:sohoj_shop/Registration/demoregi.dart';
import 'package:sohoj_shop/Registration/registration.dart';
import 'package:sohoj_shop/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


//   Center(
//     child: Padding(
//   padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
// child: Column(
//         children: [
//           Container(
//             child:Text("Hello"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "ImageUrl  : ", WriteName: _registrationInfo.imageUrl),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Name  : ", WriteName: "Md Firoj Hossain"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Gender  : ", WriteName: "Male"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Phone  : ", WriteName: "01725171605"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Gmail  : ", WriteName: "firoj@gmail.com"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Password  : ", WriteName: "1234566789"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "Conform Password  : ", WriteName: "1234566789"),
//           ),
//           Container(
//             child: _RegiAllInFo2(LeftName: "ImageUrl  : ", WriteName: "Md Firoj Hossain"),
//           ),
//         ],
// )
//       ),
//
//   ),