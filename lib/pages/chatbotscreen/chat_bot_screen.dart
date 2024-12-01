import 'package:adhd/constants/colors.dart';
import 'package:adhd/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class Chat_bot_screen extends StatefulWidget {
  const Chat_bot_screen({super.key});

  @override
  State<Chat_bot_screen> createState() => _BotScreenState();
}

class _BotScreenState extends State<Chat_bot_screen> {
  final TextEditingController _userMessage = TextEditingController();

  static const apiKey = "AIzaSyB3k_snZAxt4a60jVKePAjW3t70EZ0UUSU";

  final model = GenerativeModel(model: 'gemini-1.5-flash-latest', apiKey: apiKey);

  final List<Message> _messages = [];

  Future<void> sendMessage() async {
    final message = _userMessage.text;
    _userMessage.clear();

    setState(() {
      _messages
          .add(Message(isUser: true, message: message));
    });

    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    setState(() {
      _messages.add(Message(
          isUser: false, message: response.text ?? ""));
    });
  }

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
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text(
            'LELO 😄',
            style: GoogleFonts.barriecito(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return Messages(
                    isUser: message.isUser,
                    message: message.message,
                    
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: TextFormField(
                      controller: _userMessage,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(50)),
                        label: const Text("Ask LELO..."),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    padding: const EdgeInsets.all(15),
                    iconSize: 30,
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.deepPurple),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(
                        const CircleBorder(),
                      ),
                    ),
                    onPressed: () {
                      sendMessage();
                    },
                    icon: const Icon(Icons.send),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Messages extends StatelessWidget {
  final bool isUser;
  final String message;
  const Messages(
      {super.key,
      required this.isUser,
      required this.message,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 15).copyWith(
        left: isUser ? 100 : 10,
        right: isUser ? 10 : 100,
      ),
      decoration: BoxDecoration(
        color: isUser ? Colors.deepPurple : Colors.grey.shade200,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(30),
          bottomLeft: isUser ? const Radius.circular(30) : Radius.zero,
          topRight: const Radius.circular(30),
          bottomRight: isUser ? Radius.zero : const Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(color: isUser ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

class Message {
  final bool isUser;
  final String message;

  Message({
    required this.isUser,
    required this.message,
  });
}
