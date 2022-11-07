import 'package:flutter/material.dart';
import 'package:sohoj_shop/Registration/RegiUserData/view_all_regi_data.dart';
import 'package:sohoj_shop/Registration/registration.dart';
import 'package:sohoj_shop/Registration/registration_model.dart';

class RegiUserData extends StatefulWidget {
  const RegiUserData({Key? key}) : super(key: key);

  @override
  State<RegiUserData> createState() => _RegiUserDataState();
}

class _RegiUserDataState extends State<RegiUserData> {
  List<RegistrationInfo> regiInfo =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registration.length == 0
          ? Center(child: Text('Data Not Found!'))
          : ListView.builder(
              itemCount: registration.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildRegiData(context, registration[index], index);
              }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationForm()),
            );
          },
          child: Text("Add")),
    );
  }

  BuildRegiData(BuildContext context, RegistrationInfo regiin, int index) {
    var text;
    return Center(
      child:ListView(
        children: [
          Text("Name ${regiin.userName}"),
        ],
      ),
    );
  }
}





