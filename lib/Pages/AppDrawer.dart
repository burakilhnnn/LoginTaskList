import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "Menü",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text("Görev Ekle"),
            onTap: () {
              Navigator.pushNamed(context, '/task');
            },
          ),
          ListTile(
            title: Text("Görev Listesi"),
            onTap: () {
              Navigator.pushNamed(context, '/taskList');
            },
          ),
          ListTile(
            title: Text("Çıkış Yap"),
            onTap: () {
              Navigator.pushNamed(context, '/logout');
            },
          ),
        ],
      ),
    );
  }
}
