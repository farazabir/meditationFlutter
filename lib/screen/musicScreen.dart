import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  AudioPlayer audioPlayer = new AudioPlayer();

  bool isPlaying = false;

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  //set player action
  playerActions() async {
    print(duration);

    if (isPlaying) {
      audioPlayer.pause();
      isPlaying = false;
      print(duration);
    } else {
      final url = UrlSource(
          'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3');
      audioPlayer.play(url);
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
      print("position: $position");
                 
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff272F40),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            //Image part
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/calm.png"),
              ),
            ),
            //Music name part
            /// Creating a container with a text inside it.
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                child: Text(
                  "Clam Music",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800)),
                ),
              ),
            ),
            //Slider
            /// Creating a slider with a min value of 0, max value of duration.inSeconds.toDouble(), and
            /// a value of position.inSeconds.toDouble().
            Slider(
              min: 0,
              max: duration.inMilliseconds.toDouble(),
              value: position.inMilliseconds
                  .toDouble()
                  .clamp(0, duration.inMicroseconds.toDouble()),
              onChanged: (double value) async {
                print("slider value: $value");
                final seekPosition = Duration(milliseconds: value.toInt());
                await audioPlayer.seek(seekPosition);
                await audioPlayer.resume();
              },
            ),
            // music time
            /// Creating a row with two text widgets inside it. The first text widget has a text of
            /// "0:0" and the second text widget has a text of "3:02".
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                formatTime(position),
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Text(
                formatTime(duration - position),
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ]),

            //play button
            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                iconSize: 50,
                onPressed: playerActions,
              ),
            )
          ]),
        ),
      ),
    );
    ;
  }
}
