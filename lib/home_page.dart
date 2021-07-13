import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tela_dribble1/card_list_view.dart';
import 'package:tela_dribble1/controler/home_controller.dart';
import 'package:tela_dribble1/tela_player.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();

  @override
  void initState() {
    controller.getHome();
    controller.stateNotifier.addListener(() {
      setState(() {
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowNameUser(),
            SizedBox(height: 20,),
            Text('Listen Now and',
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
            Text('learn new things',
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400],),
                        hintText: 'Search Podcast',
                        hintStyle: TextStyle(
                          color: Colors.grey[400], fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon( Icons.launch, color: Colors.black,)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                  style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                Text('View More >',
                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
              ],
            ),
            SizedBox(height: 20,),
              SizedBox(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: controller.home.map((e) => CardList(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TelaPlayer(
                          imagem: e.imagem,
                          playScreen: e.info,
                        )));
                      },
                      title: e.titulo,
                      picture: e.imagem,
                      subtitle: e.subtitulo,
                    )).toList()
                  ),
                )
              ),
            SizedBox(height: 20,),
            Text('Recently',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28, color: Color(0xff1b2957)),),
            SizedBox(height: 20,),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network('https://media.istockphoto.com/photos/headphones-isolated-on-white-picture-id472380836?s=612x612',
                  fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Start Podcast',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),),
                SizedBox(height: 5,),
                Text('By Masashi kisimoto',
                  style: TextStyle(color: Colors.grey,fontSize: 16, fontWeight: FontWeight.w500),)
              ],
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(onPressed: (){},
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_right_outlined, color: Colors.white,size: 45,),))
            )
          ],
        ),
          ],
        ),
      ),
    );
  }
}

class RowNameUser extends StatelessWidget {

  const RowNameUser({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network('https://cdn.pixabay.com/photo/2015/06/07/19/44/friends-800761_960_720.jpg',
            fit: BoxFit.cover,),
          ),
        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome',
            style: TextStyle(color: Colors.grey),),
            SizedBox(height: 5,),
            Text('Arya Wijaya',
              style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),)
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
              child: IconButton(icon: Icon(Icons.add_alert, color: Colors.grey,), onPressed: (){})),
        )
      ],
    );
  }
}
//https://cdn.pixabay.com/photo/2015/06/19/09/39/lonely-814631_960_720.jpg
//https://cdn.pixabay.com/photo/2015/12/08/00/36/woman-1081873_960_720.jpg