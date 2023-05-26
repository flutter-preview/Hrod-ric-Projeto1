import 'package:flutter/material.dart';
import 'package:projeto1/pages/add_click.dart';
import 'package:projeto1/pages/home.dart';
import 'package:projeto1/pages/pagina1.dart';
import 'package:projeto1/pages/pagina2.dart';
import 'package:projeto1/shared/constants.dart';

class RoutesGenerator {
  static const homePage = '/';
  static const addPage = '/clique/add';
  static const pagina1 = '/pagina1';
  static const pagina2 = '/pagina2';
  RoutesGenerator._();

  static Route generate(RouteSettings settings){
    switch(settings.name){
      case homePage:
        return MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Pagina Inicial'));
      case addPage:
        return _goPage( const AddClickPage());
      case pagina1:
        return _goPage( const Pagina1(title: 'Pagina 1'));
      case pagina2:
        return _goPage(const Pagina2(title: 'Pagina 2'));
      default:
      throw const FormatException(AppConstants.PageNotFound);
    }
  }
  static _goPage(Widget page) => MaterialPageRoute(
    builder: (_) => page,
    );
}