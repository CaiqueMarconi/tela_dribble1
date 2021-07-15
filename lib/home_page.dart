import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tela_dribble1/widgets/card_list_view.dart';
import 'package:tela_dribble1/models/class_music_now.dart';
import 'package:tela_dribble1/tela_player.dart';
import 'package:tela_dribble1/widgets/row_music_listening.dart';
import 'package:tela_dribble1/widgets/row_top_name_user.dart';
import 'package:tela_dribble1/widgets/text_widgets.dart';

import 'models/list_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowNameUser(),
              SizedBox(
                height: 20,
              ),
              TextWidgets(text: 'Listen Now and', fontWeight: FontWeight.bold, size: 25,),
              TextWidgets(text: 'learn new things', fontWeight: FontWeight.bold,size: 25,),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                          ),
                          hintText: 'Search Podcast',
                          hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.launch,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgets(text: 'Popular', fontWeight: FontWeight.bold, size: 23,),
                  TextWidgets(text: 'View More >', fontWeight: FontWeight.w600, size: 15,),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ListMusic.length,
                      itemBuilder: (context, index) {
                        MusicNow musicnow = ListMusic[index];
                        return CardList(
                          picture: '${musicnow.picture}',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TelaPlayer(
                                    picture: musicnow.picture,
                                    title: musicnow.title,
                                    subtitle: musicnow.subtitle)));
                          },
                          title: musicnow.title,
                          subtitle: musicnow.subtitle,
                        );
                      })),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recently',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xff1b2957)),
              ),
              SizedBox(
                height: 20,
              ),
              ListeningMusic(),
            ],
          ),
        ),
      ),
    );
  }
}

