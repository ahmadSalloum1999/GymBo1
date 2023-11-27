import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VideoPlayerCustum extends StatefulWidget {
  const VideoPlayerCustum( {Key? key}) : super(key: key);


  @override
  _VideoPlayerCustumState createState() => _VideoPlayerCustumState();
}

class _VideoPlayerCustumState extends State<VideoPlayerCustum> {

  late VideoPlayerController _controller;
  late Future<void> _video;




  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://player.vimeo.com/external/372329292.sd.mp4?s=3f575ae7baaa13104a8b3583d210034176ee23d8&profile_id=164&oauth2_token_id=57447761");
    _video = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("see your target"),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: _video,
        builder: (context,snapshot)
        {
          if(snapshot.connectionState == ConnectionState.done)
            {
              return AspectRatio(aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            }
          else
            {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(_controller.value.isPlaying)
          {
            setState(() {
              _controller.pause();
            });
          }
        else{
          setState(() {
            _controller.play();
          });
        }
      },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause:Icons.play_arrow),
      ),
    );
  }
}

