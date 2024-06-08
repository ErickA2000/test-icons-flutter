import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icons Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Icons Demo Home Page'),
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Material icons:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.home, size: 30, color: Colors.purple,)
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cupertino icons',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(CupertinoIcons.home, color: Colors.blue,)
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Font awesome icons:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                FaIcon(FontAwesomeIcons.house, color: Colors.amber,),
                Padding(padding: EdgeInsets.all(10)),
                Icon(FontAwesomeIcons.house, color: Colors.amber,)
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.2,
              color: Colors.deepPurpleAccent,
              child: const Text('Esto es una prueba de texto',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  overflow: TextOverflow.ellipsis
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'Esto es una prueba con una fuente en assets',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontFamily: 'Jacquard'
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Text(
              'Texto con dependencia de google font',
              style: GoogleFonts.aboreto(
                color: Colors.red
              )
            )
          ],
        ),
      ),
    );
  }
}
