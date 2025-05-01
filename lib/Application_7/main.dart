import 'package:flutter/material.dart';
import 'package:flutter180/Application_7/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? pref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pref = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    home: HomeView()
  ));
}