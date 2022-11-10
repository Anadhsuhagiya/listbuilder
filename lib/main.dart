import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List name = [
    'Anadh',
    'Meet',
    'Shreerang',
    'Abhi',
    'Ayushi',
    'Smit',
    'Vidhi',
    'Manav',
    'Kishan',
    'Dev'
  ];
  List msg = [
    'Hello !',
    'Good Morning',
    'Good Afternoon',
    'Good Evening',
    'Good Night',
    'Hey ..!',
    'How are You ? ',
    'I am Fine',
    'And You',
    'Best'
  ];
  List time = [
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45',
    '12:45'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview Builder"),
        ),
        body: ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  "${num[index]}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                title: Text(
                  name[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  msg[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: Text(
                  time[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              );
            }));
  }
}
