import 'package:flutter/material.dart';
import 'package:todo_app_simple/ui/simple_app_bar.dart';
import 'package:todo_app_simple/screens/todolist.dart';

void main() {
  //MaterialPageRoute.debugEnableFadingRoutes = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TodoApp',
      theme: ThemeData(fontFamily: 'Manrope', hintColor: Colors.black26),
      home: MyHomePage(title: 'TodoApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          SimpleAppBar(widget.title),
          Expanded(child: TodoList()),
        ],
      ),
    );
  }
}
