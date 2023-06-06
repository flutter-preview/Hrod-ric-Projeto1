import 'package:flutter/material.dart';
import 'package:projeto1/componets/image_header.dart';
import 'package:projeto1/componets/title_widget.dart';

import '../shared/styles.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const ImageHeader(),
      ),
      body: Column(
        children: [
          const TitleDefault(title: 'Categorias'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: const[
                    Expanded(
                      child: Text(
                        'Nome',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0, left: 16.0),
                      child: Text(
                        'Cor',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Ação',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: AppStyle.gray,
                  height: 1,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _categories.length,
                    itemBuilder: (_, index){
                      return Row(
                        children: [
                          Text(_categories[index]),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
