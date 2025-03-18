import 'package:flutter/material.dart';
import 'package:my_app/Pages/AppDrawer.dart';

class TaskPage extends StatefulWidget {
  static List<String> gorevler = [];

  const TaskPage({super.key});

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TextEditingController kontrolcu = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Görev Ekle"), backgroundColor: Colors.amber),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: kontrolcu,
              decoration: InputDecoration(labelText: "Görev Başlığı"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (kontrolcu.text.isNotEmpty) {
                  setState(() {
                    TaskPage.gorevler.add(kontrolcu.text);
                    kontrolcu.clear();
                  });
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              child: Text("Görev Ekle"),
            ),
          ],
        ),
      ),
    );
  }
}
