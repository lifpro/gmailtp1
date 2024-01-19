import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gmail M1'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.share_sharp),
            ),
            Icon(Icons.more_vert_sharp),
          ],
        ),
        drawer: const Drawer(
          child: Column(children: [
            DrawerHeader(child: Column()),
            ListTile(
              title: Text('Boite de reception'),
            ),
            ListTile(
              title: Text('Message Envoyé'),
            )
          ]),
        ),
        body: const Center(child: Text('Comeroun Vs Guinée')),
      ),
    );
  }
}
