import 'package:flutter/material.dart';
import 'package:motogp_leaderboard/riders.dart';

class MainScreen extends StatelessWidget {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF322A46),
            Color(0xFF574B97),
            Color(0xFF4098D2)
          ])),
      child: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 60.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    "assets/motogp_logo.png",
                    height: 100.0,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "2020",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Standings",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
            height:  MediaQuery.of(context).size.height-195.0,
            margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0, bottom: 15.0),
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: listRiders.map((rider) {
                    return FlatButton(
                      onPressed: () => AlertDialog(
                        title: Text("Tertekan"),
                      ),
                      child: Card(
                        elevation: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                              child: Text('${this.index++}.', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                            )),
                            Flexible(
                              child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                              child: ClipOval(
                                child: Image.network(
                                  rider.photo,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      rider.name,
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    Text(rider.team,  style: TextStyle(color: Color(0xFFD5D9DF)),),
                                  ],
                                ),
                              ),
                            ),
                            Padding( 
                                padding: const EdgeInsets.only(left: 30.0, top: 10.0, bottom: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      '${rider.points}',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    Text("Points", style: TextStyle(color: Color(0xFF4098D2)),),
                                  ],
                                ),
                               ),
                          ],
                        ),
                      ),
                    );
                  }).toList()),
            ))
      ]),
    ));
  }
}

var listRiders = [
  Riders(
      name: "Joan Mir",
      photo:
          "https://asset.indosport.com/article/image/q/80/319335/joan_mir_suzuki_1-169.jpg",
      team: "Suzuki",
      points: 171,
      wins: 1,
      podiums: 7,
      description:
          " Before he became a World Champion, Joan Mir was selected for the Red Bull Rookies Cup and took a second place finish during his first year. He showed great speed during the 2014 Rookies season with three wins, two seconds and a third. Many expected him to be a title contender during the 2015 FIM CEV Repsol Moto3™ Junior World Championship, and he ended the season in fourth taking some incredible wins - and in with a fighting chance of the title until the final round of the year. He also made his Grand Prix debut that year at the Australian GP, replacing the injured Hiroko Ono, and impressed many with his pace. He moved up to the World Championship with Leopard Racing aboard a KTM in 2016 and was Rookie of the Year, taking his first victory at the Austrian GP. For 2017"),
  Riders(
      name: "Franco Morbidelli",
      photo:
          "https://cdn1-production-images-kly.akamaized.net/87D3WcqV1ea_MNo1g3eRKuG47-g=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3296915/original/013906700_1605453310-000_8V98B7.jpg",
      team: "Yamaha",
      points: 158,
      wins: 3,
      podiums: 5,
      description:
          "Born in Rome and now living in the motorsport-rich Tavullia, Franco Morbidelli took the Superstock 600 title in 2013 alongside World Championship wildcard outings in Moto2™ at Misano, Motegi and Valencia. He went on to sign with Italtrans Racing Team for a full campaign in 2014 and continued with them in 2015, making his podium debut in Indianapolis. Unfortunately a broken leg sustained during a motocross training session saw him miss several races after Brno, with Morbidelli returning to finish the season but far from fully fit."),
  Riders(
      name: "Alex Rins",
      photo:
          "https://awsimages.detik.net.id/community/media/visual/2019/06/13/89ad92f8-b27b-446b-98f2-7984b4612938_169.jpeg",
      team: "Suzuki",
      points: 139,
      wins: 1,
      podiums: 4,
      description:
          "Alex Rins won the CEV in 2011 before moving up to the Moto3™ World Championship in 2012 and gaining the title of Rookie of the Year. A title contender down to the last corner in 2013 after more wins and podiums, the Spaniard was just beaten to the crown by compatriot Maverick Viñales. After a more difficult 2014 affected slightly by injury, Rins moved to Moto2™ for 2015 and was Rookie of the Year, taking wins in his debut season in the intermediate class."),
  Riders(
      name: "Andrea Dovizioso",
      photo:
          "https://pict-a.sindonews.net/dyn/620/pena/news/2020/11/10/49/226438/andrea-dovizioso-terancam-nganggur-pada-motogp-2021-pyp.jpg",
      team: "Ducati",
      points: 135,
      wins: 1,
      podiums: 2,
      description:
          " 2004 125 World Champion Andrea Dovizioso has been in MotoGP™ since an incredible rookie season in 2008, where he was top Independent Team rider and fifth overall. His first victory came at Donington in 2009 when riding for Repsol Honda, before the Italian moved to the Ducati Team following a stint with Monster Yamaha Tech 3. A key part of Ducati’s journey back to the top, ‘DesmoDovi’ is one of the hardest to overtake on the brakes – and one of the cleanest competitors in battle. After long seasons of hard work saw the bike more and more competitive and a consistent frontrunner, 2017 saw the Italian challenge for the World Championship down to the wire in Valencia after a stunning six wins across the season. For 2018, he hit the ground running to win the season opener, endured some harder races and then came back swinging - ending the year runner up once again. 2019 began in similar fashion: a win in Qatar. However, a certain Marquez turned up the wick and proved too much for everyone, with Dovizioso claiming nine podiums - including two wins - on his way to P2 in the overall standings for a third year in a row. Both he and Ducati will be hoping 2020 is their year to shine."),
  Riders(
      name: "Pol Espargaro",
      photo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfkYK38mTjPtFV_b8T1aT8PPrpYY90uJ9l2g&usqp=CAU",
      team: "KTM",
      points: 135,
      wins: 0,
      podiums: 5,
      description:
          "  Pol Espargaro debuted in the 125 World Championship in 2006 in seven races alongside winning the Spanish national crown in the same year. Rookie of the Year in his first full World Championship campaign, 2009 then saw Espargaro take his first win. Moving up to the Moto2™ World Championship in 2011 after a title challenge in the lightweight class the year before, the Spaniard took the intermediate class crown in 2013 before moving up to MotoGP™. Rookie of the Year once again, 2015 was then tougher with some DNFs, before 2016 saw Espargaro just miss out on the title of top Independent Team rider to Cal Crutchlow. The Granollers native moved to Red Bull KTM Factory Racing in 2017, and was the team’s top rider in their first season – including some entries into Q2 and solid top ten results. In 2018, Espargaro was often the fastest Austrian machine once again but the Spaniard suffered some big injury struggles mid-season that curtailed progress. After a difficult year, some light appeared at the end of the tunnel in Valencia as Espargaro took KTM's first podium in MotoGP™ with an impressive ride in difficult conditions. In 2019, Espargaro stayed in orange and although there was no repeat podium success, the number 44 was KTM’s shining light. A wrist fracture in Aragon didn’t stop Espargaro from reaching the 100-point tally, with a dry-race P6 in Le Mans his best result. KTM proved the surprise package of 2020 and Pol Espargaro was at the very heart of it, as five podium finishes throughout the season, as well two pole positions for the first time in his career, helped him to 5th in the Championship. Despite the progress made, he is still without a premier class win and makes the move Repsol Honda for 2021 alongside Marc Marquez. Can he adapt to the RC213v and earn that long awaited victory?"),
  Riders(
      name: "Maverick Viñales",
      photo:
          "https://pbs.twimg.com/profile_images/1123966890081169411/7480Hm-b.jpg",
      team: "Yamaha",
      points: 132,
      wins: 1,
      podiums: 3,
      description:
          "2013 Moto3™ World Champion Maverick Viñales took the lightweight title in the CEV in 2010, as well as the European 125 Championship the following year, and debuted in the 125 World Championship in 2011. He won four races in his rookie year – third in the Championship and Rookie of the Year – and then took that title in 2013. As a Moto2™ rookie in 2014, Viñales was again Rookie of the Year and won four races – moving up to MotoGP™ the year after with Team Suzuki Ecstar. Another Rookie of the Year trophy followed, before the Spaniard then took Suzuki’s first race win since 2007 – and his maiden MotoGP™ win – at the British GP in 2016"),
  Riders(
      name: "Jack Miller",
      photo:
          "https://cdn-1.motorsport.com/images/amp/6O1o75N2/s6/jack-miller-pramac-racing-1.jpg",
      team: "Ducati",
      points: 132,
      wins: 0,
      podiums: 4,
      description:
          "Jack Miller made his road race debut in 2009 after beginning his career on dirt and debuted in the 125 World Championship soon after. Taking the 125 IDM crown on his way to full time competition on the world stage, Miller first impressed in 2013 when he proved a consistent frontrunner with Racing Team Germany. A title challenge with Red Bull KTM Ajo in 2014 saw Miller just miss out to Alex Marquez, before he made the incredible move from Moto3™ straight to MotoGP™ in 2015."),
Riders(
      name: "Fabio Quartararo",
      photo:
          "https://cdns.klimg.com/bola.net/library/upload/21/2020/09/quartararo_efb08b5.jpg",
      team: "Yamaha",
      points: 127,
      wins: 3,
      podiums: 3,
      description:
          "Inizia a correre a quattro anni e presto si trasferisce in Spagna per continuare la crescita agonistica. Nel 2013 vince il FIM CEV Repsol, impresa che ripete anche la stagione successiva. Visto il suo talento, viene modificata la norma che nega l’accesso al mondiale Moto3™ ai minori di 16 anni permettendo ai vincitori del CEV di accedere direttamente alla competizione. Il francese debutta nella categoria cadetta nel 2015 con la Honda del team Estrella Galicia 0,0. Sale sul secondo gradino del podio alla seconda gara ripetendosi in Olanda dopo aver centrato le pole a Jerez e Le Mans ma un infortunio mette fine alla sua stagione. "),
];
