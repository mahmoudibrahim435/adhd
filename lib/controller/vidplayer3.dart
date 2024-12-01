// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:adhd/constants/colors.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 class Vidplayer3 extends StatefulWidget {
  const Vidplayer3({super.key});

  @override
  State<Vidplayer3> createState() => _VidplayerState();
}

class _VidplayerState extends State<Vidplayer3> {
    late CustomVideoPlayerController _customVideoPlayerController;

  String assetPath = "assets/videos/vid.mp4";
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blu,
        centerTitle: true,
        title: Text(
          "فيديوهات تعليمية",
          style: GoogleFonts.cairo(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                
                  
                 CustomVideoPlayer(
                      customVideoPlayerController:
                          _customVideoPlayerController),

                Text(
                  "وصف المقطع :",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 16, 11, 11)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اكتب شيء...",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 16, 11, 11)),
                )
              ],
            );
          }),
    );
  }

  void initializeVideoPlayer() {
    CachedVideoPlayerController _VideoPlayerController;
    _VideoPlayerController = CachedVideoPlayerController.asset(assetPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _VideoPlayerController);
  }
}
