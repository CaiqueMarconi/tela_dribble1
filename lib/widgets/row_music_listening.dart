import 'package:flutter/material.dart';

class ListeningMusic extends StatelessWidget {

  const ListeningMusic({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(08),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
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
    );
  }
}