import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Gender {male,female}
Gender? _gender = Gender.male;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Learning App'),
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



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(widget.title,
            style: const TextStyle(
              fontFamily: "Satisfy",
              fontSize: 30
            ),
            )
        ),
        backgroundColor: Colors.redAccent,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top:20.0,left:10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Q1. What is your gender? ",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Satisfy",
                      color: Colors.red
                    ),

                  ),
                ),
              ),
              ListTile(
                title: const Text(
                    "Male",
                    style: TextStyle(
                      color: Colors.red
                    ),
                ),
                leading: Radio<Gender>(
                  value: Gender.male,
                  groupValue: _gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _gender = value;
                      print("Male");
                    });
                  },
                )
              ),
              ListTile(
                title: const Text(
                    "Female",
                    style: TextStyle(
                      color: Colors.red
                  ),
                ),
                leading: Radio<Gender>(
                  value: Gender.female,
                  groupValue: _gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _gender = value;
                      print("Female");
                    });
                  },
                )
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: const [
              DrawerHeader(
                  child: Center(
                      child: Text(
                          "Hello there!",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: "Satisfy",
                            fontSize: 30
                          ),
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
