import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NewVideoPlayer extends StatefulWidget {
  @override
  _NewVideoPlayerState createState() => _NewVideoPlayerState();
}

class _NewVideoPlayerState extends State<NewVideoPlayer> {
  VideoPlayerController controll;

  @override
  void initState() {
    super.initState();
    controll = VideoPlayerController.asset('assets/fast_furious_9.mp4')
      ..initialize().then((_) => setState(() {}));

    controll.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    controll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 11 Video Player"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          controll.value.initialized
              ? AspectRatio(
                  aspectRatio: controll.value.aspectRatio,
                  child: VideoPlayer(controll),
                )
              : Container(),
          Positioned(
            left: 200,
            top: 100,
            child: IconButton(
                icon: Icon(
                  controll.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 40,
                ),
                onPressed: () {
                  controll.value.isPlaying ? controll.pause() : controll.play();
                }),
          ),
        ],
      ),
    );
  }
}
