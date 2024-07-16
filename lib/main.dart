import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = "Text will be diplayed here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.yellow[100],
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Type Something'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Get Data
                    print(_textController.text);
                    setState(() {
                      _displayText = _textController.text;
                    });
                    _displayText = _textController.text;
                  },
                  child: Text('Click Here'),
                ),
                Text(_displayText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
