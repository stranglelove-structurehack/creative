import 'package:flutter/material.dart';
import 'package:structura_hack/screens/EntryScreen.dart';
import 'package:structura_hack/screens/MainScreen.dart';
import 'package:structura_hack/screens/QuestScreen.dart';
import 'package:structura_hack/screens/RegistrationScreen.dart';
import 'package:structura_hack/ui/NavigationBar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/entry',
      routes: {
        '/entry': (context) => EntryScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/navigationBar': (context) => CustomNavigationBar(),
        '/main': (context) => const MainScreen(),
        '/questScreen': (context) => const QuestScreen(),
      },
    ),
  );
}