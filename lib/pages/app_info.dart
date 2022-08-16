import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInfo extends StatefulWidget {
  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {

  List<String> images = [
    "assets/game.png",
    "assets/todo.png",
    "assets/location.png",
    "assets/workout.png",
    "assets/call.png",
    "images/music.png"
  ];

  List<String> des = [
    "This section contains a variety of games which will help the user to improve their memory power and to easily recall things with lots of entertainment.",
    "Used to schedule day-to-day life activities.\n➜ Taking medicine once a week or daily,\n➜  Reminder for meditation,\n➜ Completing different types of tasks,etc",
    "In this section, the user will enable to acquire directions if an elderly person occasionally forgots how to get home or to another specific place.\n➜ This section will help the user to reach home or any location easily without any difficulties.",
    "This section's goal is to get you physically ready.\n➜ Surya namaskar is the primary exercise that you will  perform.\n➜ The section gives detailed directions for each of the surya namaskar's 12 steps along with the appropriate picture.\n➜ After every 10 seconds, the image will automatically change, and it will pause for 5 seconds between each step.",
    "In this section, you can add contacts for your friends, family or etc.\n➜ By doing this you don’t need to find the particular contact.\n ➜ You can instantly connect with your loved ones with only one tap.",
    "Users can listen to music in this part that will help them unwind and release stress. They will become more mentally stable as a result.\n➜ The music they will hear is called meditative rain sound. This ticking sound is rhythmic and has the advantages of a beautiful lullaby.\n➜ When this sounds enters people's brain,brain relaxes automatically and releases alpha waves, which are extremely similar to the brain waves that occur when a person sleeps.",

  ];

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      child: InkWell(
        child: Material(
          color: Colors.cyan,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontFamily: "Alike"
                    ),
                    maxLines: 14,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 20,
        centerTitle: true,
        title: Text(
          "APP GUIDE",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Game Zone", images[0], des[0]),
          customcard("To-Do Tasks", images[1], des[1]),
          customcard("Get Directions", images[2], des[2]),
          customcard("Exercise Zone", images[3], des[3]),
          customcard("Contact Family", images[4], des[4]),
          customcard("Music Medicine", images[5], des[5]),
        ],
      ),
    );
  }
}