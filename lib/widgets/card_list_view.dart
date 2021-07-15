import 'package:flutter/material.dart';

class CardList extends StatelessWidget {

  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final String picture;

  CardList({this.onTap, this.title, this.subtitle, this.picture});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(style: BorderStyle.none)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              child: Align(
                alignment: Alignment.topCenter,
                  child: Image.network(picture,
                  height: 200,
                  width: 250,
                  fit: BoxFit.cover,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text(subtitle,
                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
