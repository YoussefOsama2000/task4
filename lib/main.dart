import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DummyPage(),
  ));
}

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  _DummyPageState createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body: Column(
          children: [
            ListView(
              children: [Card()],
            )
          ],
        ));
  }
}
