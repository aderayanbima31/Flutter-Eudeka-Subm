import 'package:flutter/material.dart';
import 'football_club.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<FootballClub> fc = [
    FootballClub(
        year: "1892",
        name: "Liverpool F.C",
        stadium: "Anfield Stadium",
        images_url: "https://wallpapercave.com/wp/wp2522414.jpg",
        desc:
            "Liverpool Football Club adalah sebuah klub sepak bola asal Inggris yang berbasis di Kota Liverpool. Saat ini Liverpool adalah peserta Liga Utama Inggris."),
    FootballClub(
        name: "Manchester City F.C",
        year: "1894",
        stadium: "Etihad Stadium",
        images_url: "https://i.imgur.com/EoVGfBt.jpg",
        desc:
            "Manchester City Football Club (dikenal pula sebagai Man City atau The Citizens) adalah sebuah klub sepak bola profesional dari Inggris yang bermain di Liga Premier Inggris."),
    FootballClub(
        name: "Arsenal F.C",
        year: "1886",
        stadium: "Emirates Stadium",
        images_url: "https://wallpaperaccess.com/full/219041.jpg",
        desc:
            "Arsenal Football Club adalah klub sepak bola profesional Inggris yang berbasis di daerah Holloway, London. didirikan pada 1886 dengan nama Dial Square."),
    FootballClub(
        name: "Chelsea F.C",
        year: "1905",
        stadium: "Stamford Bridge Stadium",
        images_url:
            "https://wallpaper-gallery.net/images/chelsea-fc-wallpaper-hd/chelsea-fc-wallpaper-hd-5.jpg",
        desc:
            "Chelsea Football Club adalah sebuah klub sepak bola Inggris yang bermarkas di Fulham, London. Chelsea didirikan pada tahun 1905 dan kini berkompetisi di Liga Utama Inggris. Kesuksesan pertama Chelsea diraih saat meraih gelar juara liga pada tahun 1955."),
    FootballClub(
        name: "Manchester United F.C",
        year: "1878",
        stadium: "	Old Trafford Stadium",
        images_url: "https://wallpapercave.com/wp/El3Vek7.jpg",
        desc:
            "Manchester United Football Club adalah sebuah klub sepak bola profesional Inggris yang berbasis di Old Trafford, Manchester Raya, yang bermain di Liga Inggris."),
    FootballClub(
        name: "Tottenham Hotspur F.C",
        year: "1882",
        stadium: "Tottenham Hotspur Stadium",
        images_url: "https://wallpaperplay.com/walls/full/a/3/8/118039.jpg",
        desc:
            "Tottenham Hotspur Football Club, adalah klub sepak bola yang berasal dari Tottenham, sebuah daerah yang berada di wilayah utara London. Mereka juga dikenal sebagai Spurs, The Spurs dan Tottenham, sementara penggemar mereka memberi mereka nama the Lilywhites karena seragam tradisional mereka yang berwarna putih.")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: fc.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 4,
                    child: Column(children: <Widget>[
                      CachedNetworkImage(
                          imageUrl: fc[index].images_url,
                          placeholder: (context, url) =>
                              new CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              new Icon(Icons.error)),
                      Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(fc[index].name,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(fc[index].stadium, style: TextStyle(fontStyle: FontStyle.italic),)
                                          ]),
                                      Text(fc[index].year, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                    ],
                                  )),
                              Text(fc[index].desc, textAlign: TextAlign.justify)
                            ],
                          ))
                    ]),
                  );
                }),
          )),
    );
  }
}
