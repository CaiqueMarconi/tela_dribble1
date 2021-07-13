
import 'dart:convert';

class PlayerModel{

  final String imagem;

  PlayerModel({this.imagem});

  Map<String,dynamic> toMap(){
    return {
      'imagem' : imagem
    };
  }

  factory PlayerModel.fromMap(
      Map<String,dynamic> map
      ){return PlayerModel(
    imagem: map["imagem"]
  );}

  String toJson() => json.encode(toMap());
  factory PlayerModel.fromJson(String source) => PlayerModel.fromMap(json.decode(source));
}