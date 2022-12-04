import 'dart:math';

import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/img/mapScreen_icon.png'),
            ),
            Spacer(flex: 1),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Text('Карта', style: TextStyle(color: Colors.white)),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5E5BBB),
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
