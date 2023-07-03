import 'package:flutter/material.dart';
import 'package:projeto1/pages/add_click.dart';
import 'package:projeto1/routes/routes_generator.dart';
import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var myHome = const MyHomePage(title:'Manjericao');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: myHome,
      initialRoute: RoutesGenerator.homePage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}