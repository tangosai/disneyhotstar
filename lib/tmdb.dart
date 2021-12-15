import 'package:disneyhotstar/pages/home.dart';
import 'package:disneyhotstar/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class Tmdb extends StatefulWidget {
  const Tmdb({ Key? key }) : super(key: key);

  @override
  _TmdbState createState() => _TmdbState();
}

class _TmdbState extends State<Tmdb> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050735),
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF050735),
        title: Image.asset('assets/images/disney-hotstar-logo-dark.png',height: 99,width: 100,),
        // leading: const Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        actions:[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: const Homepage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF050735),
         showSelectedLabels:true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        selectedFontSize:10.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.tv_outlined),label:"Tv"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined),label:"Reel"),
          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined),label:"Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_cricket_outlined),label:"Sports")
        ],
      ),
    );
  }
}