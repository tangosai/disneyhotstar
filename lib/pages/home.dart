import 'package:disneyhotstar/widgets/slider.dart';
import 'package:disneyhotstar/widgets/widget_card.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  List upcomingmovies = [];
// use your api custom token
  final String apikey = '';
  final readaccesstoken = '';
  @override
  void initState(){
    lodmovies();
    super.initState();
  }
  
  lodmovies()async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs:true
    )
    );
    Map trendingresults = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresults = await tmdbWithCustomLogs.v3.movies.getNowPlaying();
    Map tvresults = await tmdbWithCustomLogs.v3.tv.getPouplar();
    Map upcomingmoviesresults = await tmdbWithCustomLogs.v3.tv.getAiringToday();
   
    setState(() {
      trendingmovies = trendingresults['results'];
      topratedmovies = topratedresults['results'];
      tv = tvresults['results'];
      upcomingmovies  = upcomingmoviesresults['results'];
    });
    // ignore: avoid_print
    //  print(trendingmovies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050735),
       body:SingleChildScrollView(
         child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const HomeSlider(),
            // const SizedBox(height: 20,),
            TopRatedMovies(toprateds: trendingmovies, text: 'Latest & Trending',),
            TopRatedMovies(toprateds: tv, text: 'Popular Shows',),
            TopRatedMovies(toprateds: upcomingmovies, text: 'Upcoming Shows',),
          ]
      ),
       ),
     );
  }
}
