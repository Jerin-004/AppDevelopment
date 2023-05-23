import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  var image1 = "assets/images/gun.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Top footbal players list"),
      ),
      body:
         SafeArea(
           child: Center(
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 1.0),
               child: DataTable(
                 headingRowColor:MaterialStateProperty.all(Colors.grey),
                 border: TableBorder.all(),
                 headingTextStyle: const TextStyle(
                   fontFamily: "Dancing_Script",
                   fontSize: 18.0,
                 ),
                 columns: const [
                   DataColumn(label: Text("S no")),
                   DataColumn(label: Text("Name")),
                   DataColumn(label: Text("Position"))
                 ],
                 rows: const [
                   DataRow(cells: [
                     DataCell(Text("1")),
                     DataCell(Text("Lionel Messi")),
                     DataCell(Text("RW"))
                   ]),
                   DataRow(cells: [
                     DataCell(Text("2")),
                     DataCell(Text("Cristiano Roanldo")),
                     DataCell(Text("ST"))
                   ]),
                 ],
               ),
             ),
           ),
          // child: ClipRRect(
          //   borderRadius: const BorderRadius.all(
          //       Radius.circular(1000)
          //   ),
          //
          //   child: Image(
          //     image: AssetImage(image1),
          //     filterQuality: FilterQuality.high,
          //     opacity: const AlwaysStoppedAnimation(0.9),
          //   ),
          // )
              // Icon(
              //   Icons.waving_hand_outlined,
              //   size: 100,
              //   color: Colors.black,
              //   shadows: [
              //     Shadow(
              //       color: Colors.red,
              //       blurRadius: 15.0
              //     )
              //   ],
              // )

              // Text("Hello There",
              //   style:
              //       TextStyle(
              //         fontSize: 40,
              //         backgroundColor: Colors.transparent,
              //         color: Colors.black,
              //         letterSpacing: 5.0,
              //         fontFamily: "Dancing_Script",
              //       ),
              // )
        )
    );
  }
}
