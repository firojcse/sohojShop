import 'package:flutter/material.dart';
Widget CustomeElevatedButtonn(

    {
      required EleveteDWidth,
      required EleveteFun,
      required ElevatedButtonName,
    }
    ){

  return Container(
    width: EleveteDWidth,
    height: 40,
    child: ElevatedButton(
      onPressed: EleveteFun,
      child:Text(ElevatedButtonName),
    ),
  );
}