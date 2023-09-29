import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'dummy_list.dart';

class MusicList extends StatelessWidget {
  MusicList({super.key});

  var songimages = [
    'https://m.media-amazon.com/images/M/MV5BMmMxOWQ0YzgtZGJhYy00ZGQ5LTk4MTMtYjhlMWJiZGIyNTM0XkEyXkFqcGdeQXVyMTA0MDM3NDg4._V1_FMjpg_UY2000_.jpg',
    'https://gumlet.assettype.com/filmcompanion%2F2023-06%2Fdd309759-78e6-4e0e-afa5-9762cce63138%2F2__22_.jpg?format=auto',
    'https://thetelugufilmnagar.com/wp-content/uploads/2023/03/pathuthala.webp',
    'https://i.scdn.co/image/ab67616d0000b2738bda34105de5623bae6bf02e',
    'https://is1-ssl.mzstatic.com/image/thumb/Music122/v4/39/bc/e1/39bce1b3-f752-75e9-fb7e-60953266be4c/196925478762.jpg/600x600bf-60.jpg',
    'https://c.saavncdn.com/408/Shiddat-Hindi-2021-20210922172609-500x500.jpg'
  ];

  var songname = [
    'Farzi',
    'Naa Ready',
    'Pathu Thala',
    'Vaa Vaathi',
    'Thenmozhi',
    'Chitta'
  ];

  var songslist = [
    "assets/audios/farzi.mp3",
    "assets/audios/audio.mp3",
    "",
    "",
    "",
    "assets/audios/shiddat.mp3"
  ];

  var playlistimages = [
    "https://t2.gstatic.com/images?q=tbn:ANd9GcSnZ1_QXPJEB6WUWuW792bgpkDEslzK-NpMGACok5MRUF3IjFSM",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJQ7leSNIMiueq9vGdZaLayEeNpv_7kER7CbTiQrXuDbSm6XJz",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT8SqpoSd9SEl7BJZz8oc7y2fHKV8oS6HV4JCrV8YubjDNWKN-3",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcROqRLMO4b5oJ7gk-I9vjdVt5IEhqLPCvG4sxZyTek3BmVk5kIU",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR5frK3thUzCfPyYqAkNo6lG-mb57C5rWAQJksC09ZBJ6WsoblG",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRTcApiRpNfXRjqIltqHYJvGKsPjAlPWMiNQ4l0rN5QOauLyDlw",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRgFgdMIKhEoWNmWEND-dbJcjO7y_U1Zal7TAwQwGP4BBYMhpvZ",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRr3aqfIkZ3jTdonyyJj-DBOJzgNMVavOAnypoychMzLp7RXb7P"
  ];

  var singername = [
    'Sachin-Jigar,Tanishk Bagchi',
    'Anirudh Ravichander',
    'A.R.Rahman',
    'G.V.Prakash',
    'Santhosh Narayanan',
    'Manan bhardwaj'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text(
                  "Musify.",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.pinkAccent.shade100,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Suggested Playlist",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent.shade100),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 270,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(playlistimages[index]),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Recommeded for you",
                  style: TextStyle(
                    color: Colors.pinkAccent.shade100,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: singername.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 90,
                      color: Colors.transparent,
                      child: Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Image.network(
                            songimages[index],
                            height: 100,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            songname[index],
                            style: TextStyle(
                                color: Colors.pinkAccent.shade100,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            singername[index],
                            style: TextStyle(
                              color: Colors.white,
                              height: 2,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  AssetsAudioPlayer.newPlayer().open(
                                    Audio(songslist[index]),
                                    autoStart: true,
                                    showNotification: true,
                                  );
                                },
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.pinkAccent.shade100,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.download,
                                    color: Colors.pinkAccent.shade100,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ])));
  }
}
