
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  int x = 1;
  void play(int y){
    final playerAudio = AudioCache();
    playerAudio.play('note$y.wav');

}

Expanded buildo({Color color: Colors.red, int soundNumber: 1}){
    return Expanded(
    child: TextButton(


      onPressed: () {

        play(soundNumber);
      },
      child: Expanded(
        child: Container(
          color: color,
        ),
      ),
    ),
  );


}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text("Xylophone")),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                 buildo(color: Colors.lightGreenAccent, soundNumber: 1),
  buildo(color: Colors.red, soundNumber: 2),
  buildo(color: Colors.blue, soundNumber: 3),
  buildo(color: Colors.green, soundNumber: 4),
  buildo(color: Colors.yellow, soundNumber: 5),
  buildo(color: Colors.orange, soundNumber: 6),
  buildo(color: Colors.purple, soundNumber: 7),






],

            ),
          ),
        ),
      ),
    );
  }
}
