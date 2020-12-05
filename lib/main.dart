import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: XylophoneApp(),
      ),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildButton(1, Colors.blue[400]),
          _buildButton(2, Colors.brown),
          _buildButton(3, Colors.white70),
          _buildButton(4, Colors.white38),
          _buildButton(5, Colors.blueGrey[500]),
          _buildButton(6, Colors.blue[100]),
          _buildButton(7, Colors.blue[200]),
        ],
      ),
    );
  }

  void _playSound(int num) {
    player.play('note$num.wav');
  }

  Widget _buildButton(int noteNum, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(noteNum);
        },
      ),
    );
  }
}
