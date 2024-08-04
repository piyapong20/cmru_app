import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "Ijiko";
  String accountEmail = "bKu9b@example.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("$name"),
            accountEmail: Text("$accountEmail"),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About'),
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
                trailing: const Icon(Icons.chevron_right),
              ),
            ],
          )
        ],
      ),
    );
  }
}
