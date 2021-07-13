
import 'package:flutter/foundation.dart';

class PlayerController{
  
  final currentPlayerNotifier = ValueNotifier<int>(1);
  int get currentPlay => currentPlayerNotifier.value;
  set curretPlay(int value) => currentPlayerNotifier.value;
  
}