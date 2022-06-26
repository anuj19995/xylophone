import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playsound(int soundnum) async {
    final player = AudioPlayer();
    await player.setSource(AssetSource('note$soundnum.wav'));
    await player.resume();
  }

  Expanded buildkey(int snm, Color cnm) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(cnm),
        ),
        onPressed: () {
          playsound(snm);
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.blue),
              buildkey(6, Colors.indigo),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
