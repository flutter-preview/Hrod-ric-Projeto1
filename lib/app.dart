import 'package:flutter/material.dart';
import 'package:projeto1/pages/add_click.dart';
import 'package:projeto1/routes/routes_generator.dart';
import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var myHome = const MyHomePage(title:'Manjericao');
    //var Pagina01 = const Pagina1(title:'Page1');
    //var Pagina02 = const Pagina2(title:'Page2');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: myHome,
      initialRoute: RoutesGenerator.homePage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}