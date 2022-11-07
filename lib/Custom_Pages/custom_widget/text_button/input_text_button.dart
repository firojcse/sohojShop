import 'package:flutter/material.dart';

import 'custom_text_button.dart';

class InputTextButton extends StatefulWidget {
  const InputTextButton({Key? key}) : super(key: key);

  @override
  State<InputTextButton> createState() => _InputTextButtonState();
}

class _InputTextButtonState extends State<InputTextButton> {
  TextEditingController nameCon = TextEditingController();
  String Crrency = "৳";
  List<String> CrreceyTk = ["৳", "\$", "€","₹"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameCon,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      alignLabelWithHint: true,
                      // prefixIcon: Container(
                      //   // alignment: Alignment.centerLeft,
                      //   child: Text(Crrency,style: TextStyle(fontSize: 50,),),
                      // ),
                      hintText: "Name",
                      hintStyle: TextStyle(fontSize: 14),
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
            ),
            CustomTextButton(size.width, 200, nameCon, "Phone", "Phone"),
            CustomTextButton(size.width, 40, nameCon, "Phone", "Phone"),
            CustomTextButton(size.width, 40, nameCon, "Phone", "Phone"),
            CustomTextButtonunick(
              Hidth: size.height,
              Controller: nameCon,
              LabelText: "Hello",
              HinText: null,
              IconName: Icon(
                Icons.phone,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomTextButtonunick({
  required dynamic Hidth,
  required Controller,
  required HinText,
  required LabelText,
  required IconName,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      height: 60,
      width: Hidth,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: Controller,
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            alignLabelWithHint: true,
            hintText: HinText,
            hintStyle: TextStyle(fontSize: 14),
            labelText: LabelText,
            labelStyle: TextStyle(fontSize: 14),
            prefixIcon: IconName,
          ),
          keyboardType: TextInputType.name,
        ),
      ),
    ),
  );
}
