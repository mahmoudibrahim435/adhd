import 'package:adhd/constants/colors.dart';
import 'package:adhd/pages/home.dart';
import 'package:adhd/models/angqustions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_polls/flutter_polls.dart';

class Ang extends StatefulWidget {
  const Ang({super.key});
  @override
  State<Ang> createState() => _AngState();
}

int completedQusetions = 0;

class _AngState extends State<Ang> {
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
          "الاستبيان",
          style: GoogleFonts.cairo(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 6,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: polls.length,
              itemBuilder: (BuildContext context, int index) {
                final Map<String, dynamic> poll = polls[index];

                bool hasVoted = poll['hasVoted'] ?? false;
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: FlutterPolls(
                    pollId: poll["id"].toString(),
                    hasVoted: hasVoted,
                    userVotedOptionId: poll['userVotedOptionId'].toString(),
                    onVoted: (PollOption pollOption, int newTotalVotes) async {
                      /// Simulate HTTP request
                      await Future.delayed(const Duration(seconds: 1));

                      /// If HTTP status is success, return true else false
                      return true;
                    },
                    pollTitle: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textDirection: TextDirection.rtl,
                        poll['question'],
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    pollOptions: List<PollOption>.from(
                      poll['options'].map(
                        (option) => PollOption(
                          id: option["id"].toString(),
                          title: Text(
                            option['title'],
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          votes: option['points'],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'results');
                      },
                      child: Text(
                        "اظهار النتائج",
                        style: GoogleFonts.cairo(
                            color: blu,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
