import 'package:cmru_app/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Ijiko";
  String accountEmail = "bKu9b@example.com";

  void changeName() {
    setState(() {
      name = "Nobita";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Text("สวัสดี $name"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: const Icon(Icons.add),
      ),
    );
  }
}
