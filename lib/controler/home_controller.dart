import 'package:flutter/cupertino.dart';
import 'package:tela_dribble1/controler/home_state.dart';
import 'package:tela_dribble1/models/home_model.dart';
import 'package:tela_dribble1/repository/Repository.dart';

class HomeController{

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  List<HomeModel> home;

  final repository = HomeRepository();

  void getHome() async{

    state = HomeState.load;
    home = await repository.getHome();
    state = HomeState.sucesso;
  }
}