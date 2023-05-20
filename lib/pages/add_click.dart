import 'package:flutter/material.dart';

class AddClickPage extends StatelessWidget{
  const AddClickPage({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.red,
      child: const Center(
        child: Text('Nova página'),
      ),
    );
  }
}