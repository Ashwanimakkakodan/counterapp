import 'package:counterapp/countcontroller.dart';
import 'package:counterapp/newscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Countcontroller(),
        child: Newscreen(),
      ),
    ),
  );
}
