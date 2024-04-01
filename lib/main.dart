import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void audio(int audio_number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$audio_number.wav'));
  }

  Expanded xylo(Color color, int number) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          audio(number);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            xylo(Colors.white, 1),
            xylo(const Color.fromARGB(255, 242, 4, 4), 2),
            xylo(Color.fromARGB(255, 150, 125, 242), 3),
            xylo(Color.fromARGB(255, 81, 2, 64), 4),
            xylo(Color.fromARGB(255, 205, 240, 11), 5),
            xylo(Color.fromARGB(255, 8, 200, 230), 6),
            xylo(Color.fromARGB(255, 32, 243, 4), 7),
          ],
        ),
      ),
    );
  }
}
