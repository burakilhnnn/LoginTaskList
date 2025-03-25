import 'package:flutter/material.dart';
import 'package:my_app/Pages/ImageProvider.dart';
import 'package:my_app/ResimSaglayici.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ResimSaglayici(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResimGoruntuleme(),

      routes: {},
    );
  }
}
