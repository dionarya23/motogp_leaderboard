import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motogp_leaderboard/riders.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailScreen extends StatelessWidget {
  final Riders rider;
  final int posisi;

  DetailScreen({@required this.rider, this.posisi});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height+300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF322A46),
                Color(0xFF574B97),
                Color(0xFF4098D2)
              ])),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                             Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xFFFEFEFE),
                          ),
                        ),
                        Text(
                          "Profile",
                          style:
                              TextStyle(color: Color(0xFFFEFEFE), fontSize: 20),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFFEFEFE),
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    rider.photo,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  rider.name,
                  style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Text(
                rider.team,
                style: TextStyle(color: Color(0xFFD5D9DF), fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  (rider.posisi == 1) ? '${rider.posisi}st Position' : (rider.posisi==2) ? '${rider.posisi}nd Position' : (rider.posisi==3) ? '${rider.posisi}rd Position' : '${rider.posisi}th Position',
                  style: TextStyle(color: Color(0xFFFEFEFE), fontSize: 20),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 0.5,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Icon(
                                  FontAwesome5Solid.coins,
                                  color: Color(0xFFD5D9DF),
                                  size: 35.0,
                              ),
                               ),
                              Text(
                                "Points",
                                style: TextStyle(
                                    color: Color(0xFFD5D9DF), fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  rider.points.toString(),
                                  style: TextStyle(
                                      color: Color(0xFFFEFEFE), fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Icon(
                                  FontAwesome5Solid.trophy,
                                  color: Color(0xFFD5D9DF),
                                  size: 35.0,
                              ),
                               ),
                              Text(
                                "Wins",
                                style: TextStyle(
                                    color: Color(0xFFD5D9DF), fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  rider.wins.toString(),
                                  style: TextStyle(
                                      color: Color(0xFFFEFEFE), fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Icon(
                                  Ionicons.md_podium,
                                  color: Color(0xFFD5D9DF),
                                  size: 35.0,
                              ),
                               ),
                              Text(
                                "Podiums",
                                style: TextStyle(
                                    color: Color(0xFFD5D9DF), fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  rider.podiums.toString(),
                                  style: TextStyle(
                                      color: Color(0xFFFEFEFE), fontSize: 30),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(rider.description,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xFFFEFEFE,)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Color(0xFF4098D2),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
