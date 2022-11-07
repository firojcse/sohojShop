import 'package:flutter/material.dart';
import 'package:sohoj_shop/Registration/registration_model.dart';

class ViewRegiAllData extends StatelessWidget {
  RegistrationInfo _registrationInfo;
  ViewRegiAllData(this._registrationInfo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "ImageUrel : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _registrationInfo.imageUrl.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Name : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _registrationInfo.userGender.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Gmail : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _registrationInfo.userPassword.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Gender : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _registrationInfo.userPhone.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Phone : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _registrationInfo.userPhone.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Password : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _registrationInfo.userPassword.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Conform Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _registrationInfo.userConPassword.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      ),
    );
  }

  // Container itemCard({required RegistrationInfo registrationInfo}) {
  //   return Container(
  //     child: Column(
  //       children: [
  //         Text("")
  //       ],
  //     ),
  //   );
  // }
}
//
// class DemoReAll extends StatefulWidget {
//   const DemoReAll({Key? key}) : super(key: key);
//
//   @override
//   State<DemoReAll> createState() => _DemoReAllState();
// }
//
// class _DemoReAllState extends State<DemoReAll> {
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//         body:
//         Center(
//           child: Padding(
//         padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "ImageUrel : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     _registrationInfo.imageUrl.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Name : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userGender.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Gmail : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userPassword.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Gender : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userPhone.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Phone : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userPhone,
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Password : ",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userPassword.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   Text(
//                     "Conform Password",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     _registrationInfo.userConPassword.toString(),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//         ),
//     );
//   }
//
// }
//
// //second page buildCustome
// _RegiAllInFo2({dynamic LeftName, dynamic WriteName}){
//   return Padding(
//     padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
//     child: Container(
//             alignment: Alignment.centerLeft,
//             child: Row(
//               children: [
//                 Text(
//                   LeftName,
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   WriteName,
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//   );
//
// }
//
// _RegiAllInFo(){
//   return Padding(
//     padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
//     child: Container(
//       alignment: Alignment.centerLeft,
//       child: Row(
//         children: [
//           Text(
//             "Name : ",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "Name",
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     ),
//   );
//
// }



Widget CustomeBodeyText({
  // required String UserImage,
  required String UserName,
  required String UserGmail,
  required String UserGender,
  required String UserPhone,
  required String UserPassword,
  required String UserConformPassword,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
    child: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Name : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                UserName,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Gmail : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                UserGmail,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Gender : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                UserGender,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Phone : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                UserPhone,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Password : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                UserPassword,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Conform Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                UserConformPassword,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
