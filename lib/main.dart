import 'package:flutter/material.dart';
import 'package:climatempo/Screen/ensolarado.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: const Ensolarado(),
    theme: ThemeData(
      primaryColor: const Color(0xb5d70e48),
    ),
    debugShowCheckedModeBanner: false,

  ));

}