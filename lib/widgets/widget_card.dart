import 'package:disneyhotstar/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TopRatedMovies extends StatelessWidget {

  final List toprateds;
  final String text;
  const TopRatedMovies({ Key? key, required this.toprateds, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          ModifiedText(text: text,),
          const SizedBox(height: 10,),
          // ignore: sized_box_for_whitespace
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: toprateds.length,
              itemBuilder: (context,index) {
                return InkWell(
                  onTap: () {},
                 // ignore: sized_box_for_whitespace
                 child: Container(
                   width:140,
                   padding: const EdgeInsets.all(5),
                   child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 200,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(
                             image: NetworkImage(
                               'https://image.tmdb.org/t/p/w500'+toprateds[index]['poster_path']
                             )
                           )
                         ),
                       ),
                     ],
                   )
                 ), 
                );
              }
              ),
          )
        ],
      ),
    );
  }
}