import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildButton(int note, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () => play(note),
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ), child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildButton(1, Colors.red),
                buildButton(2, Colors.orange),
                buildButton(3, Colors.yellow),
                buildButton(4, Colors.green),
                buildButton(5, Colors.green.shade900),
                buildButton(6, Colors.blue),
                buildButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
