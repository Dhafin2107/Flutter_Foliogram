class DataContents {
  String name;
  String deskripsi;
  String imageContents;
  String imageProfile;
  List<String> yourSkills;
  String judul;

  DataContents({
    required this.name,
    required this.deskripsi,
    required this.imageContents,
    required this.imageProfile,
    required this.yourSkills,
    required this.judul,
  });
}

class DataChatroom {
  String name;
  String chat1;
  String profile;
  String chat2;
  String chat3;

  DataChatroom({
    required this.name,
    required this.chat1,
    required this.chat2,
    required this.chat3,
    required this.profile,
  });
}
//data list

var DataContentList = [

  DataContents(
      name: 'Jhony ',
      deskripsi: 'Sharing an application design concept for Travel App',
      imageContents: 'images/traveling.png',
      imageProfile: 'images/orang1.png',
      yourSkills: [
        'https://cdn.iconscout.com/icon/free/png-64/figma-3521426-2944870.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-photoshop-4238646-3516519.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-illustrator-1869036-1583160.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-xd-1869035-1583159.png',

      ],
      judul: 'Travel App UI/UX'),
  DataContents(
      name: 'Tony ',
      deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
      imageContents: 'images/workout.png',
      imageProfile: 'images/orang2.png',
      yourSkills: [
        'https://cdn.iconscout.com/icon/free/png-64/figma-3521426-2944870.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-photoshop-4238646-3516519.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-illustrator-1869036-1583160.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-xd-1869035-1583159.png',

      ],
      judul: 'Workout App UI/UX'),
  DataContents(
      name: 'Bony ',
      deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
      imageContents: 'images/App interface.png',
      imageProfile: 'images/orang3.png',
      yourSkills: [
        'https://cdn.iconscout.com/icon/free/png-64/figma-3521426-2944870.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-photoshop-4238646-3516519.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-illustrator-1869036-1583160.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-xd-1869035-1583159.png',

      ],
      judul: 'App interface UI/UX'),
  DataContents(
      name: 'Alex ',
      deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
      imageContents: 'images/Furniture_shop.png',
      imageProfile: 'images/orang4.png',
      yourSkills: [
        'https://cdn.iconscout.com/icon/free/png-64/figma-3521426-2944870.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-photoshop-4238646-3516519.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-illustrator-1869036-1583160.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-xd-1869035-1583159.png',

      ],
      judul: 'Furniture shop UI/UX'),
  DataContents(
      name: 'Albert ',
      deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
      imageContents: 'images/learn_languages.png',
      imageProfile: 'images/orang5.png',
      yourSkills: [
        'https://cdn.iconscout.com/icon/free/png-64/figma-3521426-2944870.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-photoshop-4238646-3516519.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-illustrator-1869036-1583160.png',
        'https://cdn.iconscout.com/icon/free/png-64/adobe-xd-1869035-1583159.png',

      ],
      judul: 'Learn languages App'),
];

var DataChatroomList = [
  DataChatroom(
      name: 'Bony',
      chat1: 'Apa kabar?',
      chat2: 'Assalamualaikum',
      chat3: 'Waalaikumsalam',
      profile: 'images/orang3.png'),
  DataChatroom(
      name: 'Alex',
      chat1: 'Apa pendapatmu tentang aplikasi ini?',
      chat2: 'Assalamualaikum',
      chat3: 'Waalaikumsalam',
      profile: 'images/orang4.png'),
  DataChatroom(
      name: 'Jony',
      chat1: 'saya suka dengan aplikasi ini, mempermudah pekerjaan saya',
      chat2: 'Assalamualaikum',
      chat3: 'Waalaikumsalam',
      profile: 'images/orang1.png'),
  DataChatroom(
      name: 'tony',
      chat1: 'I Love u',
      chat2: 'Assalamualaikum',
      chat3: 'Waalaikumsalam',
      profile: 'images/orang2.png'),
];

class ProfileUtama {
  String judul;
  String deskripsi;
  String konten;
  String photo;
  String name;

  ProfileUtama({
    required this.judul,
    required this.deskripsi,
    required this.konten,
    required this.photo,
    required this.name,
  });
}

var ProfileUtamaList = [
  ProfileUtama(
    judul: 'Slink-WEB',
    deskripsi: 'sebuah platfrom sharing berupa link yang bermanfaat',
    konten: 'images/slink.png',
    photo: 'images/photo2.png',
    name: 'Dhafin Taufiqi',
  ),
  ProfileUtama(
    judul: 'Trashin(3D)',
    deskripsi: 'Mesin ini merupakan mesin otomatis mengubah sampah menjadi saldo ',
    konten: 'images/Mesin.png',
    photo: 'images/photo2.png',
    name: 'Dhafin Taufiqi',
  ),
  ProfileUtama(
    judul: 'UI/UX Tokonline',
    deskripsi: 'UI dari Toko online yang simpel dan efektif',
    konten: 'images/Tokonline.png',
    photo: 'images/photo2.png',
    name: 'Dhafin Taufiqi',
  ),
];
