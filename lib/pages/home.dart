import 'package:flutter/material.dart';
import 'package:projeto1/componets/subtittle_widget.dart';
import 'package:projeto1/componets/title_widget.dart';
import 'package:projeto1/shared/constants.dart';
import 'package:projeto1/shared/styles.dart';

import '../routes/routes_generator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title}): _title = title;
  final String _title;
  get name => _title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/seed/picsum/200/300'
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox.shrink(),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('home'),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.category),
                title: const Text('Categorias'),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text('Calendario'),
                onTap: (){Navigator.of(context).pushNamed(RoutesGenerator.calendarPage);},
              ),
              ListTile(
                leading: const Icon(Icons.toc_outlined),
                title: const Text('Sobre'),
                onTap: (){Navigator.of(context).pushNamed(RoutesGenerator.aboutPage);},
              )
            ],
          ),
      ),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Image.asset('images/1.jpg',
          width:64),
        ),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(AppConstants.welcome),
              const SubtitleDefault(title: AppConstants.welcome),
              TitleDefault(title: widget.name),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
              _incrementCounter();
              Navigator.of(context).pushNamed(RoutesGenerator.pagina1);
            },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}