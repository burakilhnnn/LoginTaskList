import 'package:flutter/material.dart';
import 'package:my_app/Pages/AppDrawer.dart';
import 'package:my_app/Pages/TaskPage.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Görev Listesi"),
        backgroundColor: Colors.green,
      ),
      drawer: AppDrawer(),
      body:
          TaskPage.gorevler.isEmpty
              ? Center(child: Text("Görevler Boş"))
              : ListView.builder(
                itemCount: TaskPage.gorevler.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(TaskPage.gorevler[index]));
                },
              ),
    );
  }
}
