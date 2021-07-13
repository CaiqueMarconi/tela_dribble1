import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tela_dribble1/controler/player_controller.dart';
import 'package:tela_dribble1/models/player_model.dart';

class TelaPlayer extends StatefulWidget {

  final List<PlayerModel> playScreen;
  final String imagem;

  TelaPlayer({this.playScreen, this.imagem});

  @override
  _TelaPlayerState createState() => _TelaPlayerState();
}

class _TelaPlayerState extends State<TelaPlayer> {

  final controller = PlayerController();
  final pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {controller.curretPlay = pageController.page.toInt()+1;});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.40,
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
                    Icon(Icons.arrow_back, color: Colors.white,),
                    Text('Now Playing',
                    style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
                    Icon(Icons.favorite_border, color: Colors.white,)
                  ],
                ),
                SizedBox(height: 30,),
                SizedBox(
                    child: PageView(
                      controller: pageController,
                      children: widget.playScreen.map((e) => CardContainerImage(
                        playS: e,
                      )).toList(),
                    )),
                SizedBox(height: 30,),
                Text('Career Ladder',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),),
                SizedBox(height: 15,),
                Text('By Aweka Design',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 16),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardContainerImage extends StatelessWidget {

  final String imagem;
  final PlayerModel playS;

  const CardContainerImage({Key key,this.imagem, this.playS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(imagem,
        fit: BoxFit.cover,),
      ),
    );
  }
}
