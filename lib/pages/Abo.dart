import 'package:adhd/constants/colors.dart';
import 'package:adhd/models/results.dart';
import 'package:adhd/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Abo extends StatefulWidget {
  const Abo({super.key});

  @override
  State<Abo> createState() => _AboState();
}

class _AboState extends State<Abo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
              const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text(
                          style: GoogleFonts.cairo(fontWeight: FontWeight.w700),
                          "الصفحة الرئيسية",
                        ),
                        leading: SizedBox(
                            height: 40,
                            width: 50,
                            child: Icon(
                              Icons.poll,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        }),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text("${item[0].text}",
                            style:
                                GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                        leading: SizedBox(
                            height: 40,
                            width: 50,
                            child: Icon(
                              Icons.poll,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'ang');
                        }),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text("${item[1].text}",
                            style:
                                GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                        leading: SizedBox(
                            height: 40,
                            width: 50,
                            child: Icon(
                              Icons.gamepad,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'gam');
                        }),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text(
                          "${item[2].text}",
                          style: GoogleFonts.cairo(fontWeight: FontWeight.w700),
                        ),
                        leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.play_arrow,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'vid');
                        }),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text(
                          "${item[3].text}",
                          style: GoogleFonts.cairo(fontWeight: FontWeight.w700),
                        ),
                        leading: SizedBox(
                            height: 70,
                            width: 50,
                            child: Icon(
                              Icons.android_rounded,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'chat bot');
                        }),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                        title: Text(
                          "${item[4].text}",
                          style: GoogleFonts.cairo(fontWeight: FontWeight.w700),
                        ),
                        leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.format_align_center_outlined,
                              color: blu,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'abo');
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: blu,
        centerTitle: true,
        title: Text(
          "(The Journey) الرحلة",
          style: GoogleFonts.cairoPlay(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                textDirection: TextDirection.rtl,
                "[The Journey]",
                style: GoogleFonts.cairoPlay(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              textDirection: TextDirection.rtl,
              aboutus,
              style: GoogleFonts.cairoPlay(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              textDirection: TextDirection.rtl,
              "THE JOURNEY \r معا خطوة بخطوة",
              style: GoogleFonts.cairoPlay(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}