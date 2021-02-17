import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextSTyle = TextStyle(fontFamily: 'Montserrat Regular', fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          height: size.height * .3,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/top_header.png')
            ),
          ),
        ),

        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage('https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/124348330_1024203761415510_415375680464709953_n.jpg?_nc_cat=100&ccb=3&_nc_sid=58c789&_nc_ohc=1n0aaTt2-xAAX8ePYdp&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=6&oh=32bcdd9c7eb3316bfd4c93853d1c213c&oe=60528A00'),
                      ),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Osama Billa', style: TextStyle(fontFamily: 'Montserrat Medium', color: Colors.white, fontSize: 20),),
                          Text('+47 93696169', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat Medium', color: Colors.white))
                        ]
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    primary: false,
                    children: <Widget>[
                      Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/1040/1040230.svg?token=exp=1613586399~hmac=d7e931c42200d8e51e5b040ccb3060a1', height: 128,),
                            Text('My Favourites', style: cardTextSTyle,)
                          ],
                        )
                      ),
                      Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/3163/3163478.svg?token=exp=1613586316~hmac=95705a021f8721b547f05d7673eac8ef', height: 128,),
                            Text('Chill Movies', style: cardTextSTyle,)
                          ],
                        )
                      ),
                                            Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/2405/2405298.svg?token=exp=1613586262~hmac=f936a4b60dca524198cd012e4abd3448', height: 128,),
                            Text('Action', style: cardTextSTyle,)
                          ],
                        )
                      ),
                      Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/686/686458.svg?token=exp=1613586491~hmac=8379d5e24766e0ca0aecbab7d64d746c', height: 128,),
                            Text('Old School', style: cardTextSTyle,)
                          ],
                        )
                      ),
                      Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/860/860927.svg?token=exp=1613586151~hmac=77a9748f44674a06d42aeb7ae426c99c', height: 128,),
                            Text('Romantic Movies', style: cardTextSTyle,)
                          ],
                        )
                      ),
                      Card(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/3163/3163462.svg?token=exp=1613586203~hmac=979e26c7ccaf6bfa7a364df49e697d1e', height: 128,),
                            Text('Comedy', style: cardTextSTyle,)
                          ],
                        )
                      ),
                    ],
                    crossAxisCount: 2),
                ),
              ],
            ),
          ),
        )
        ]
      ),
    );
  }
}