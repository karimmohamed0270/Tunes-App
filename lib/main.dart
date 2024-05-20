import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/Classes/Tuneclass.dart';
import 'package:music_notes_player_app_setup/Widgets/TuneWidget.dart';

void main() {
  runApp(TuneApp());
}

// ignore: must_be_immutable
class TuneApp extends StatelessWidget {
  TuneApp({Key? key}) : super(key: key);

  List<Tune> tuness = [
    Tune(color: Colors.red, tunes: "sounds/note1.wav"),
    Tune(color: Colors.blue, tunes: "sounds/note2.wav"),
    Tune(color: Colors.yellow, tunes: "sounds/note3.wav"),
    Tune(color: Colors.pink, tunes: "sounds/note4.wav"),
    Tune(color: Colors.green, tunes: "sounds/note5.wav"),
    Tune(color: Colors.purple, tunes: "sounds/note6.wav"),
    Tune(color: Colors.deepOrangeAccent, tunes: "sounds/note7 .wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Flutter Tune",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 67, 67, 67),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
              // [
              //     // TuneWidget(tuness[0]),
              //     // TuneWidget(tuness[1]),
              //     // TuneWidget(tuness[2]),
              //     // TuneWidget(tuness[3]),
              //     // TuneWidget(tuness[4]),
              //     // TuneWidget(tuness[5]),
              //     // TuneWidget(tuness[6]),]

              // for loop instated of it

                  tuness.map((i) => TuneWidget(i)).toList(),
            )));
  }
}
