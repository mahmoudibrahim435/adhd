
import 'package:adhd/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  String img;
  String text;
  String ontap;
  Item({required this.img, required this.ontap, required this.text});
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List item = [
  Item(img: "assets/images/c.png", text: "استبيان", ontap: "ang"),
  Item(img: "assets/images/games.png", text: "مركز الألعاب", ontap: "gam"),
  Item(img: "assets/images/vi.png", text: "فيديوهات تعليمية", ontap: "vid"),
  Item(img: "assets/images/bot.png", text: "chat Bot", ontap: "chat bot"),
  Item(img: "assets/images/aus.png", text: "معلومات عنا", ontap: "abo"),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
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
              "(The Journey) الرحلة",
              style: GoogleFonts.cairo(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 5, left: 5),
                  child: SizedBox(
                    height: double.infinity,
                    child: ListView.builder(
                        padding: const EdgeInsets.all(3),
                        itemCount: item.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Card(
                                elevation: 10,
                                child: ListTile(
                                  minTileHeight: 90,
                                  title: Text(
                                    "${item[index].text}",
                                    style: GoogleFonts.cairo(fontSize: 25),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '${item[index].ontap}');
                                  },
                                  leading: Positioned.fill(
                                    child: Image.asset(
                                      "${item[index].img}",
                                      height: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )),
                          );
                        }),
                  )),
            ],
          )),
    );
  }
}
