import 'package:flutter/material.dart';

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