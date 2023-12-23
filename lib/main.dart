// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'utils/string_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(221, 50, 50, 50),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 23, 255, 39)),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anchit ID Card',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 41, 41, 41),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileImage(),
              CustomDivider(),
              Field(
                labelText: "Name",
                valueText: "Anchit Chandran",
              ),
              Field(
                labelText: "Current Level",
                valueText: "$level",
              ),
              Email(),
            ],
          ),
        ));
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.email,
          color: Colors.grey[400],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text("anchit97123@gmail.com",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
              )),
        )
      ],
    );
  }
}

class Field extends StatelessWidget {
  final String labelText;
  final String valueText;

  const Field({
    super.key,
    required this.labelText,
    required this.valueText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FieldName(text: labelText),
        FieldValue(text: valueText),
      ],
    );
  }
}

class FieldValue extends StatelessWidget {
  final String text;

  const FieldValue({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        5,
        0,
        30,
      ),
      child: Text(
        toTitleCase(text),
        style: TextStyle(
          color: Colors.amber,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class FieldName extends StatelessWidget {
  final String text;

  const FieldName({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Color.fromARGB(255, 158, 157, 154),
          fontSize: 16,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Divider(
        height: 5.0,
        thickness: 0.5,
        color: Color.fromARGB(255, 131, 130, 129),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/mandelbrot.jpeg')))),
    );
  }
}
