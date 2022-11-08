import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:projek_flutter/model/local_data.dart';

class ChatingDetail extends StatelessWidget {
  final DataChatroom chat;
  ChatingDetail({required this.chat});

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                chat.profile,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(chat.name),
          ],
        ),
        backgroundColor: Colors.white30,
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(Icons.more_vert),
                ],
              )),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: BubbleNormal(
                      text: chat.chat2,
                      isSender: false,
                      color: Color(0xFF4B4B4D),
                      tail: true,
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: BubbleNormal(
                      text: chat.chat3,
                      isSender: true,
                      color: Color(0xFFE8E8EE),
                      tail: true,
                      textStyle: TextStyle(
                        fontSize: 18,),
                      sent: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: BubbleNormal(
                      text: chat.chat1,
                      isSender: false,
                      color: Color(0xFF4B4B4D),
                      tail: true,
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 2),
                  ),

                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            MessageBar(
              onSend: (_) => print(_),
              actions: [
                InkWell(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
