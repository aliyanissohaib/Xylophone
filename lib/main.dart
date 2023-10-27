import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
   runApp(const MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),

      body :ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      child : ListTile(leading: Icon(Icons.home),
      title:  Text("Aliyan"),
      trailing: Icon(Icons.home),
      ),
      // height: 200,
      // color: Colors.amber[600],
      // child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 200,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      child: TextButton(
        style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red))
        onPressed () async{

            final player = AudioPlayer();
            await player.play(UrlSource('assets/audio/town.mp3'));

             },
            child: const Text('Play')),
      )
    ),
    Container(
      height: 200,
      color: const Color.fromARGB(255, 0, 255, 42),
      child: const Center(child: Text('Entry D')),
    ),
    Container(
      height: 200,
      color: const Color.fromARGB(255, 255, 57, 7),
      child: const Center(child: Text('Entry E')),
    ),
    Container(
      height: 200,
      color: Color.fromARGB(160, 179, 255, 230),
      child: const Center(child: Text('Entry F')),
    ),
    Container(
      height: 200,
      color: Color.fromARGB(255, 119, 0, 255),
      child: const Center(child: Text('Entry G')),
    ),
    Container(
      height: 200,
      color: Colors.amber[400],
      child: const Center(child: Text('Entry H')),
    ),
    Container(
      height: 200,
      color: Color.fromARGB(255, 0, 75, 46),
      child: const Center(child: Text('Entry I')),
    ),
  ],
)
     ), 
    );
  }
}