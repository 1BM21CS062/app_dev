import 'package:flutter/material.dart';
import 'package:untitled/address.dart';
import 'package:untitled/login.dart';
import 'package:untitled/register.dart';
import 'package:untitled/start.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'start',
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'start': (context) => const Start(),
      'address': (context) => const AddressEntryPage(),
    },
  ));
}
