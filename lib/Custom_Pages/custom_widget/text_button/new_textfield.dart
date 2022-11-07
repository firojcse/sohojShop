import 'package:flutter/material.dart';
import 'package:sohoj_shop/Custom_Pages/custom_widget/custom_elevated_button.dart';
class NewTextField extends StatefulWidget {
  const NewTextField({Key? key}) : super(key: key);

  @override
  State<NewTextField> createState() => _NewTextFieldState();
}

class _NewTextFieldState extends State<NewTextField> {
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("New Text Field"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                maxLength: 11,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.mail),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
            ),
        CustomeElevatedButtonn( EleveteFun: (){},EleveteDWidth: 100, ElevatedButtonName: "Sumbit")
          ],
        ),

      ),
    );
  }
}
