import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projeto1/componets/subtittle_widget.dart';

import 'package:projeto1/services/task_service.dart';
import 'package:projeto1/shared/constants.dart';
import 'package:projeto1/shared/styles.dart';

import '../../controllers/home_controller.dart';
import '../../models/task_model.dart';
import '../title_widget.dart';

class ListTasks extends StatefulWidget{
  const ListTasks({super.key});
  
  @override
  State<StatefulWidget> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  final controller = HomeController(
    taskService: TaskService(),
  );
  List tasks;

  _ListTasksState(): tasks = [];

  @override
  void initState(){
    tasks = controller.getTasks();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (_, index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDefault(title: AppConstants.nextTasks),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_,index){
                  return Row(
                    children: [
                      const Text('Circle'),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(tasks[index].category.color),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Column(
                              children: [
                                TitleDefault(title: tasks[index].title),
                                SubtitleDefault(title: tasks[index].description),
                              ],
                            ),
                          ),
                      ),
                      
                      Checkbox(
                        activeColor: AppStyle.primaryColor,
                        value: true, 
                        onChanged: (value){
                          setState(() {
                            tasks[index] = tasks[index].copyWith(finished:value);
                          });
                        },
                      ),
                    ],
                  );
                }
              ),
              ),
          ],
        );
      },
      //itemCount: tasks.length,
    );
  }
}