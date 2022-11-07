import 'package:flutter/material.dart';
import 'package:sohoj_shop/Registration/RegiUserData/view_all_regi_data.dart';
import 'package:sohoj_shop/Registration/registration.dart';
import 'package:sohoj_shop/Registration/registration_model.dart';

class demo_view_page extends StatefulWidget {
  const demo_view_page({Key? key}) : super(key: key);

  @override
  State<demo_view_page> createState() => _demo_view_pageState();
}

class _demo_view_pageState extends State<demo_view_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registration.length == 0
          ? Center(child: Text('Data Not Found!'))
          : ListView.builder(
              itemCount: registration.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildRegiData2(context, registration[index], index);
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
      child: ListView(
        children: [
          Text("Name ${regiin.userName}"),
          Text(regiin.userName.toString()),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewRegiAllData(regiin)));
              },
              icon: Icon(Icons.arrow_forward_sharp))
        ],
      ),
    );
  }

  BuildRegiData2(BuildContext context, RegistrationInfo regiin, int index) {
    var text;
    return Card(
      child: ListTile(
        title: Text(regiin.userName.toString()),
        subtitle: Text(regiin.userGmail.toString()),
        leading: Icon(Icons.home),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewRegiAllData(regiin)));
          },
          child: Text(
            "More",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
