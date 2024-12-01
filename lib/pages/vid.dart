import 'package:adhd/constants/colors.dart';
import 'package:adhd/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vid extends StatefulWidget {
  const Vid({super.key});

  @override
  State<Vid> createState() => _VidState();
}

class _VidState extends State<Vid> {
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
                        title:  Text(style:  GoogleFonts.cairo(fontWeight: FontWeight.w700),
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
          "فيديوهات تعليمية",
          style: GoogleFonts.cairo(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                minTileHeight: 60,
                minLeadingWidth: 20,
                title: Text(
                  "المقطع الاول",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red1),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'vid1');
                },
                leading: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                minTileHeight: 60,
                minLeadingWidth: 20,
                title: Text(
                  "المقطع الثاني",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red1),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'vid2');
                },
                leading: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                minTileHeight: 60,
                minLeadingWidth: 20,
                title: Text(
                  "المقطع الثالث",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red1),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'vid3');
                },
                leading: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                minTileHeight: 60,
                minLeadingWidth: 20,
                title: Text(
                  "المقطع الرايع",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red1),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'vid4');
                },
                leading: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
