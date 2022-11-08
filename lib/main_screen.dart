import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:projek_flutter/chat_room.dart';
import 'package:projek_flutter/model/local_data.dart';
import 'package:projek_flutter/profile_screen.dart';
import 'package:comment_tree/comment_tree.dart';

import 'Camera.dart';
import 'detail_profile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 670) {
            return WebPage();
          } else {
            return mobileScreen();
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12.5,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.people_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
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
                    color: Colors.white,
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
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfileScreen();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mobileScreen extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, int index) {
          final DataContents data = DataContentList[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(data.imageContents),
                fit: BoxFit.contain,
              ),
            ),
            child: SafeArea(
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ClipOval(
                              child: Container(
                                width: 5,
                                color: Colors.black12,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: ButtonFollow(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ClipOval(
                              child: Container(
                                color: Colors.black12,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox.fromSize(size: const Size(100, 350)),
                    Expanded(
                      child: FavoriteButton()
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: ClipOval(
                          child: Container(
                            color: Colors.black12,
                            child: IconButton(
                              icon: const Icon(
                                Icons.insert_comment_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () => showModalBottomSheet(
                                enableDrag: false,
                                // isDismissible: false,
                                isScrollControlled: false,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    )),
                                context: context,
                                builder: (context) => const buildSheet(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: ClipOval(
                          child: Container(
                            color: Colors.black12,
                            child: IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return ProfileScreenDetail(data: data);
                                        }));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0, left: 10, right: 10,top: 5),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(data.imageProfile),
                                      radius: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          data.judul,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          data.deskripsi,
                                          overflow: TextOverflow.visible,
                                          softWrap: true,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ]),
            ),
          );
        },
        itemCount: DataContentList.length,
      ),
    );
  }
}


class ButtonFollow extends StatefulWidget {
  const ButtonFollow({Key? key}) : super(key: key);

  @override
  State<ButtonFollow> createState() => _ButtonFollowState();
}

class _ButtonFollowState extends State<ButtonFollow> {
  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: () {
          // Aksi ketika button diklik
          setState(() {
            isFollow = !isFollow;
          });
        },
        child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 5.5, horizontal: 15.0),
            child: Text(
              isFollow ? 'Follow' : 'Unfollow',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
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

class buildSheet extends StatelessWidget {
  const buildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CommentTreeWidget<Comment, Comment>(
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content: 'contentnya sangat bagus '),
              [
                Comment(
                    avatar: 'null', userName: 'null', content: 'sangat setuju'),
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content: "ini lebih baik dari yang aku buat ')"),
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content: 'besok aku akan buat seperti ini'),
                Comment(
                    avatar: 'null',
                    userName: 'taufiqi',
                    content:
                    'Aplikasi yang sangat bermanfaat, karena aplikasi ini saya bisa mendapatkan inspirasi'),
              ],
              treeThemeData:
              const TreeThemeData(lineColor: Colors.white12, lineWidth: 3),
              avatarRoot: (context, data) => PreferredSize(
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/pngken.png'),
                ),
                preferredSize: const Size.fromRadius(18),
              ),
              avatarChild: (context, data) => const PreferredSize(
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/dhafin.jpg'),
                ),
                preferredSize: Size.fromRadius(12),
              ),
              contentChild: (context, data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'anonimus',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${data.content}',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('Like'),
                            SizedBox(
                              width: 24,
                            ),
                            Text('Reply'),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              contentRoot: (context, data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Me',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${data.content}',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('Like'),
                            SizedBox(
                              width: 24,
                            ),
                            Text('Reply'),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ],
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
    );
  }
}




class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  int number = 99;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 15),
          child: ClipOval(
            child: Container(
                color: Colors.black12,
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  onPressed: () {
                    //bagian untuk requirement yang kurang yaitu  stateful
                    setState(() {
                      isFavorite = !isFavorite;
                      if(!isFavorite){
                        number = number - 1;
                      }else{
                        number = number + 1;
                      }

                    });
                  },
                )),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top:65, left: 22 ),
            child: Text(number.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ))
      ],
    );
  }
}

class WebPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, int index) {
            final DataContents data = DataContentList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: 400,
                height: 670,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(data.imageContents),
                    fit: BoxFit.contain,
                  ),
                ),
                child: SafeArea(
                  child: Container(
                    child: Stack(children: [
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 400,
                          height: 670,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      child: ClipOval(
                                        child: Container(
                                          width: 5,
                                          color: Colors.black12,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.more_horiz,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: ButtonFollow(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      child: ClipOval(
                                        child: Container(
                                          color: Colors.black12,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  child: SizedBox.fromSize(size: Size(100, 350))),
                              Expanded(
                                child: FavoriteButton(),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  child: ClipOval(
                                    child: Container(
                                      color: Colors.black12,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.insert_comment_outlined,
                                          color: Colors.white,
                                        ),
                                        onPressed: () => showModalBottomSheet(
                                          enableDrag: false,
                                          // isDismissible: false,
                                          isScrollControlled: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              )),
                                          context: context,
                                          builder: (context) => buildSheet(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  child: ClipOval(
                                    child: Container(
                                      color: Colors.black12,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) {
                                                    return ProfileScreenDetail(data: data);
                                                  }));
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10.0, left: 10, right: 10),
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(data.imageProfile),
                                                radius: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    data.name,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    data.deskripsi,
                                                    overflow: TextOverflow.visible,
                                                    softWrap: true,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            );
          },
          itemCount: DataContentList.length,
        ),
      ),
    );
  }
}



