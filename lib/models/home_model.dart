
import 'dart:convert';

import 'package:tela_dribble1/models/player_model.dart';

enum Album {album1, album2}
extension AlbumStringExt on String {Album get parse => {
  'album1' : Album.album1,
  'album2' : Album.album2
}[
  this
];}

extension AlbumExt on Album{String get parse => {
  Album.album1 : "album1",
  Album.album2 : "album2"
}[
[this]
];}

  class HomeModel{

  final String titulo;
  final List<PlayerModel> info;
  final String imagem;
  final Album album;
  final String subtitulo;

  HomeModel({this.titulo, this.info, this.imagem, this.album, this.subtitulo});

  Map<String,dynamic> toMap(){
    return {
      "titulo" : titulo,
      "info" : info.map((x) => x.toMap()).toList(),
      "imagem" : imagem,
      "album" : album.parse,
      "subtitulo" : subtitulo
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map){
    return HomeModel(
        titulo : map["titulo"],
        info : List<PlayerModel>.from(map['info']?.map((x) => PlayerModel.fromMap(x))),
        imagem : map["imagem"],
        album : map["album"].toString().parse,
        subtitulo : map["subtitulo"]);
  }

  String toJson() => json.encode(toMap());
  factory HomeModel.fromJson(String source) => HomeModel.fromMap(json.decode(source));

  }