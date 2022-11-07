import 'package:flutter/material.dart';

Widget CustomTextButton (dynamic Hidth, Height, Controller, HinText,LabelText ){

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      height: Height,
      width: Hidth,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black,width: 1),

      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: Controller,
          decoration:InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.white)

            ),
            alignLabelWithHint: true,
            hintText: HinText,hintStyle: TextStyle(fontSize: 14),
            labelText:LabelText,labelStyle: TextStyle(fontSize: 14),
          ),
          keyboardType: TextInputType.name,
        ),
      ),
    ),
  );
}