import 'package:flutter/material.dart';
import 'package:projek_flutter/model/local_data.dart';
import 'chating_detail.dart';

class ChatRoom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Room'),
        backgroundColor: Colors.white30,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Icon(Icons.more_vert),
                ],
              )),
        ],
      ),
      body: ListView.builder(
        itemBuilder: ( context, int index) {
          final DataChatroom chat = DataChatroomList[index];
          return  Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                },

                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10.0, left: 10, right: 10),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(chat.profile),
                                    radius: 30,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                width: 290,
                                height: 50,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return ChatingDetail(chat: chat);
                                    }));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          chat.name,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          chat.chat1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                              child: Icon(Icons.mark_chat_read, color: Colors.black54,)),
                          ],
                        )),
                  ],

                )
              ],
            ),
          );
        },itemCount: DataChatroomList.length,
      ),
    );
  }
}
