import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RowPlayMusic extends StatelessWidget {

  const RowPlayMusic({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                FontAwesome.step_backward,
                color: Colors.grey,
                size: 25,
              ),
              Icon(
                FontAwesome.backward,
                color: Colors.grey,
                size: 25,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.white,
                    size: 45,
                  )),
              Icon(
                FontAwesome.forward,
                color: Colors.grey,
                size: 25,
              ),
              Icon(
                FontAwesome.step_forward,
                color: Colors.grey,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
