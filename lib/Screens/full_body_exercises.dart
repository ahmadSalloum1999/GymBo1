import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:workout_app/Screens/exercises.dart';

class Full_Body_exercises extends StatefulWidget {
  const Full_Body_exercises({Key? key}) : super(key: key);

  @override
  State<Full_Body_exercises> createState() => _FullBodyExerciseState();
}

class _FullBodyExerciseState extends State<Full_Body_exercises> {

  final List<Exercises> exercises = [
    Exercises(
      videoUrl: 'https://player.vimeo.com/external/372329292.sd.mp4?s=3f575ae7baaa13104a8b3583d210034176ee23d8&profile_id=164&oauth2_token_id=57447761',
      name: "stretching",
      imageUrl: "assets/images/stretching.PNG",
    ),
    Exercises(
      videoUrl: 'https://player.vimeo.com/external/371844818.sd.mp4?s=f0919893eb33c4aa10371a426e2dadbc47da82bf&profile_id=164&oauth2_token_id=57447761',
      name: "warming",
      imageUrl: "assets/images/warming.PNG",
    ),
    Exercises(
      videoUrl: 'https://player.vimeo.com/external/415159113.sd.mp4?s=26a4f03c57d027eb2080cde548ba6c070cceca4e&profile_id=164&oauth2_token_id=57447761',
      name: "planks",
      imageUrl: "assets/images/plank.PNG",
    ),
    Exercises(
      videoUrl: 'https://player.vimeo.com/external/392192165.sd.mp4?s=455f25561748332e6c45cc4b324d11bc8cb2b3c5&profile_id=165&oauth2_token_id=57447761',
      name: "squats",
      imageUrl: "assets/images/squats.PNG",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width:double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/pedro.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Full Body",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Colors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Exersices",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Colors.red,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: double.infinity,
                height: 750,
                child: ListView.builder(
                    itemCount: exercises.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(exercises[index].imageUrl),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              exercises[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

