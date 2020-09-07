import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ' Data Table'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFF00),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DataTable(
          headingRowHeight: 100,
            columns: [
          DataColumn(
            label: Text('Name', style: TextStyle(fontSize: 30),),
          ),
          DataColumn(
            label: Text('Age', style: TextStyle(fontSize: 30),),
          ),
          DataColumn(
            label: Text('Gender', style: TextStyle(fontSize: 30),),
          ),
        ], rows: [
          DataRow(cells: [
            DataCell(Text("Forkan", style: TextStyle(fontSize: 30),)),
            DataCell(Text("25", style: TextStyle(fontSize: 30),)),
            DataCell(Text("Male", style: TextStyle(fontSize: 30),)),
          ]),
          DataRow(cells: [
            DataCell(Text("Pritam", style: TextStyle(fontSize: 30),)),
            DataCell(Text("50", style: TextStyle(fontSize: 30),)),
            DataCell(Text("Male", style: TextStyle(fontSize: 30),)),
          ]),
          DataRow(cells: [
            DataCell(Text("Fahim", style: TextStyle(fontSize: 30),)),
            DataCell(Text("16", style: TextStyle(fontSize: 30),)),
            DataCell(Text("Male", style: TextStyle(fontSize: 30),)),
          ]),
        ]),
      ),
    );
  }
}
