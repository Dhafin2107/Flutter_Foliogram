import 'package:flutter/material.dart';
import 'package:projek_flutter/model/local_data.dart';

import 'Camera.dart';
import 'chat_room.dart';
import 'detail_contents.dart';

class ProfileScreenDetail extends StatefulWidget {
  final DataContents data;

  ProfileScreenDetail({required this.data});

  @override
  State<ProfileScreenDetail> createState() => _ProfileScreenDetailState();
}


class _ProfileScreenDetailState extends State<ProfileScreenDetail> {
  bool isFollow = false;
  int number = 9999;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
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
                          widget.data.name,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 30.0,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert_rounded,
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
                    widget.data.imageProfile,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '999',
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2),
                        const Text('Likes'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          number.toString(),
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2),
                        const Text('Folowers'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '9999',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2),
                        const Text('Following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(flex: 3, child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      //bagian untuk requirement yang kurang yaitu  stateful
                      setState(() {
                        isFollow = !isFollow;
                        if(!isFollow){
                          number = number - 1;
                        }else{
                          number = number + 1;
                        }
                      });
                    },
                    child: Container(
                        margin:
                        const EdgeInsets.symmetric(vertical: 5.5, horizontal: 25.0),
                        child: Text(
                          isFollow ? 'Unfollow' : 'Follow',
                          style: const TextStyle(fontSize: 14.0, color: Colors.white),
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: isFollow ? Colors.white12 : Colors.black26,
                      // Background color
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                )
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.chat,
                        color: Colors.black38,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 330,
              child: const Text(
                'Have Skills',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.data.yourSkills.map((url){
                  return Padding(
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
                              const BoxShadow(
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
                               url)),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              width: 330,
              child: const Text(
                'Contents',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PageDetail(data: widget.data);
                          }));
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(widget.data.imageContents,fit: BoxFit.cover,)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.data.judul,
                              style: const TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(widget.data.deskripsi),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
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
                  icon: const Icon(
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
                  icon: const Icon(
                    Icons.people_outlined,
                    color: Colors.black38,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 3,
                child: IconButton(
                  icon: const Icon(
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
                  icon: const Icon(
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
                  icon: const Icon(
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

class ButtonFollow extends StatefulWidget {
  // const ButtonFollow({Key? key}) : super(key: key);

  @override
  State<ButtonFollow> createState() => _ButtonFollowState();
}

class _ButtonFollowState extends State<ButtonFollow> {
  bool isFollow = false;
  int number = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isFollow = !isFollow;
            if(!isFollow){
              number = number - 1;
            }else{
              number = number + 1;
            }
          });
        },
        child: Container(
            margin:
            const EdgeInsets.symmetric(vertical: 5.5, horizontal: 25.0),
            child: Text(
              isFollow ? 'Follow' : 'Unfollow',
              style: const TextStyle(fontSize: 14.0, color: Colors.white),
            )),
        style: ElevatedButton.styleFrom(
          primary: isFollow ? Colors.black26 : Colors.white12,
          // Background color
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}

