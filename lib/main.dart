import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded audioButton(int audioNo, Color color) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: () {
            playaudio(audioNo);
          },
          child: Text(""),
        ),
        color: color,
      ),
    );
  }

  void playaudio(int audioNo) {
    final player = AudioPlayer();
    player.play(AssetSource('note$audioNo.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              audioButton(1, Colors.red),
              audioButton(2, Colors.orange),
              audioButton(3, Colors.yellow),
              audioButton(4, Colors.green),
              audioButton(5, Colors.teal),
              audioButton(6, Colors.indigo),
              audioButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
