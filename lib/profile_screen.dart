import 'package:flutter/material.dart';
import 'package:projek_flutter/model/local_data.dart';

import 'Camera.dart';
import 'chat_room.dart';
import 'detailprofile_utama.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            'Dhafin Taufiqi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 30.0,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: ClipOval(
                    child: Image.asset(
                      'images/photo2.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '999',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text('Likes'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '9999',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text('Folowers'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '9999',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text('Following'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: Container(
                      child: ButtonEditProfile())),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black38,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 330,
                child: Text(
                  'Your Skills',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white24,
                                  blurRadius: 2.0,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-64/flutter-3521432-2944876.png')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white24,
                                  blurRadius: 2.0,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-64/html5-2038876-1720089.png')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white24,
                                  blurRadius: 2.0,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-64/css-37-226088.png')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white24,
                                  blurRadius: 2.0,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-64/javascript-2038874-1720087.png')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white24,
                                  blurRadius: 2.0,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-64/blender-3628659-3029884.png')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                width: 330,
                child: Text(
                  'Contents',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ProfileUtamaList.length,
                  itemBuilder: (context, int index) {
                    final ProfileUtama utama = ProfileUtamaList[index];
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 10,
                          shadowColor: Colors.black38,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return ScreenUtama(utama: utama);
                                        }));
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    padding: EdgeInsets.all(10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(13),
                                        child: Image.asset(
                                          utama.konten,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        utama.judul,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(utama.deskripsi),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12.5,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.people_outlined,
                    color: Colors.black38,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 3,
                child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Camera();
                        }));
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.chat_outlined,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ChatRoom();
                        }));
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonEditProfile extends StatelessWidget {
  const ButtonEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: TextButton(
            onPressed: () {
            },
            child: Container(
              width: 100,
                height: 20,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                )),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black))))),
      ),
    );
  }
}
