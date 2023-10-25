import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateless and Stateful examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stateless and Stateful Examples '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _goToStatelessItem() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StatelessItem()),
      );
    });
  }
  
  void _goToStatefulItem() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StatefulItem()),
      );      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: _goToStatelessItem,
              child: const Text("Stateless"),
            ),
            ElevatedButton(
                onPressed: _goToStatefulItem,
                child: const Text("Stateful"),
              ),
          ],
        ),
      ),
    );
  }
}

class StatelessItem extends StatelessWidget {
  const StatelessItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a Stateless Widget Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class StatefulItem extends StatefulWidget {
  const StatefulItem({super.key});

  @override
  State<StatefulItem> createState() => StatefulItemState();
}

class StatefulItemState extends State<StatefulItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a Stateful Widget Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
