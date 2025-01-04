import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';





class YoutubeVideo extends StatefulWidget {
  YoutubeVideo({ this.url});

  final url;


  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  YoutubePlayerController _controller;
  void runYoutubePlayer(){
    _controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId
      (widget.url),
        flags: YoutubePlayerFlags(enableCaption:  false,
            isLive: false,
            autoPlay: false
        )
    );
  }

  @override
  void initState(){
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }



  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context,player){
        return Scaffold(

          body: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              player,
            ],
          ),

        );
      },

    );
  }
}