import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:projek_flutter/model/local_data.dart';
import 'package:comment_tree/comment_tree.dart';


class ScreenUtama extends StatelessWidget {
  final ProfileUtama utama;

  ScreenUtama({required this.utama});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        if (constraints.maxWidth > 650) {
          return WebPageDetail(utama: utama,);
        } else {
          return ProfileScreenUtama(utama: utama,);
        }
      },
    );
  }
}


class ProfileScreenUtama extends StatelessWidget {
  final ProfileUtama utama;

  ProfileScreenUtama({required this.utama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(utama.konten),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Stack(children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ButtonFollow(),
                        ),
                        Expanded(
                          flex: 2,
                          child: IconButton(
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                            onPressed: () {},
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
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black26,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },

                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0, left: 10, right: 10),
                                    child: ClipOval(
                                      child: Image.asset(
                                       utama.photo,
                                        height: 58,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0,right: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          utama.name,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          height: 50,
                                          child: Text(
                                            utama.deskripsi,
                                            overflow: TextOverflow.fade,
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,

                                              ),
                                          ),
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
            ]),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
      ),
    );
  }
}

class buildSheet extends StatelessWidget {
  const buildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ListView(
        padding: EdgeInsets.all(16),
        children: [
          CommentTreeWidget<Comment, Comment>(
            Comment(
                avatar: 'null',
                userName: 'null',
                content: 'contentnya sangat bagus '),
            [
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content: 'sangat setuju'),
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content:
                  "ini lebih baik dari yang aku buat ')"),
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
            treeThemeData: TreeThemeData(lineColor: Colors.white12, lineWidth: 3),
            avatarRoot: (context, data) => PreferredSize(
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/pngken.png'),
              ),
              preferredSize: Size.fromRadius(18),
            ),
            avatarChild: (context, data) => PreferredSize(
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
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${data.content}',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              fontWeight: FontWeight.w300, color: Colors.black),
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
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${data.content}',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              fontWeight: FontWeight.w300, color: Colors.black),
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

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,

      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}


class WebPageDetail extends StatelessWidget {
  final ProfileUtama utama;

  WebPageDetail({required this.utama});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 670,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(utama.konten),
                fit: BoxFit.contain,
              ),
            ),
            child: SafeArea(
              child: Container(
                child: Stack(children: [
                  Container(
                    width: 400,
                    height: 670,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ButtonFollow(),
                            ),
                            Expanded(
                              flex: 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
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
                        Expanded(
                          child: IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                            child: Container(

                              decoration: BoxDecoration(
                                color: Colors.black26,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },

                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10.0, left: 10, right: 10),
                                        child: ClipOval(
                                          child: Image.asset(
                                            utama.photo,
                                            width: 55,
                                            height: 55,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            utama.name,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            utama.deskripsi,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
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
                ]),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
