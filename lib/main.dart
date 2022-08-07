import 'package:climatempo/Screen/chuva.dart';
import 'package:flutter/material.dart';
import 'package:climatempo/Screen/ensolarado.dart';
import 'package:climatempo/Screen/chuva.dart';
import 'package:climatempo/Screen/nublado.dart';
void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: const Nublado(),
    theme: ThemeData(
      primaryColor: const Color(0xb5d70e48),
    ),
    debugShowCheckedModeBanner: false,

  ));

}