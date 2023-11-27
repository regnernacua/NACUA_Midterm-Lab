import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Hello World'),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: const [
            Card(
              color: Colors.black,
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 30, color: Colors.white),
                title: Text(
                  "Dan",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "3 letters",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 30, color: Colors.white),
                title: Text(
                  "Reyes",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "5 letters",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 30, color: Colors.white),
                title: Text(
                  "John",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "4 letters",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
