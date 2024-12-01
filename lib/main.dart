
import 'package:adhd/controller/vidplayer.dart';
import 'package:adhd/controller/vidplayer2.dart';
import 'package:adhd/controller/vidplayer3.dart';
import 'package:adhd/controller/vidplayer4.dart';
import 'package:adhd/pages/Abo.dart';
import 'package:adhd/pages/chatbotscreen/chat_bot_screen.dart';
import 'package:adhd/pages/gamescreens/game_screen.dart';
import 'package:adhd/pages/gamescreens/login_screen.dart';
import 'package:adhd/pages/gamescreens/splash_screen.dart';
import 'package:adhd/pages/home.dart';
import 'package:adhd/pages/Ang.dart';
import 'package:adhd/pages/Gam.dart';
import 'package:adhd/pages/resultsscreen.dart';
import 'package:adhd/pages/vid.dart';
import 'package:flutter/material.dart';
import 'package:adhd/pages/login.dart';
import 'package:adhd/pages/register.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';



void main() async {
  await Hive.initFlutter();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home': (context) => const Home(),
      'gam': (context) => const Gam(),
      'ang': (context) => const Ang(),
      'vid': (context) => const Vid(),
      'abo': (context) => const Abo(),
      'vid1': (context) => const Vidplayer(),
      'vid2': (context) => const Vidplayer2(),
      'vid3': (context) => const Vidplayer3(),
      'vid4': (context) => const Vidplayer4(),
      'results': (context) => const Resultsscreen(),
      'LoginScreen': (context) => const LoginScreen(),
      'GameScreen': (context) => const GameScreen(),
      'SplashScreen': (context) => const SplashScreen(),
      'chat bot': (context) => const Chat_bot_screen(),

    },
  ));
}
