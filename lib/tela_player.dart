import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tela_dribble1/widgets/row_player_music.dart';

class TelaPlayer extends StatefulWidget {
  final String picture;
  final String title;
  final String subtitle;

  TelaPlayer({this.picture, this.title, this.subtitle});

  @override
  _TelaPlayerState createState() => _TelaPlayerState();
}

class _TelaPlayerState extends State<TelaPlayer> {
  bool valor = false;
  double variavel = 0;
  double min = 0.0;
  double max = 5.45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .40,
            width: double.maxFinite,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      'Now Playing',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .50,
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      widget.picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(min.toString()),
                    Expanded(
                      child: Slider(
                        activeColor: Colors.grey,
                        inactiveColor: Colors.black,
                        value: variavel,
                        onChanged: (v) {
                          setState(() {
                            variavel = v;
                          });
                        },
                        min: min,
                        max: max,
                      ),
                    ),
                    Text(max.toString())
                  ],
                ),
                RowPlayMusic()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

