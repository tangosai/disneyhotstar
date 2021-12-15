// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: const Color(0xFF050735),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 20,),
              ListTile(
                leading: CircleAvatar(
                  child: Text('S'),
                ),
                title:Text("Sai kumar Donatham",style:TextStyle(color: Colors.white,fontSize:18)),
                
                subtitle: Text("+91 950200000",style:TextStyle(color: Colors.white,fontSize:16)),
              ),
              SizedBox(height: 20,),
              // ignore: prefer_const_constructors
              Divider(
                thickness: 1,
                color: Colors.white30,
              ),
              ListTile(
                leading: Icon(Icons.file_download,color: Colors.white,),
                title:Text("Downloads",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.playlist_play,color: Colors.white,),
                title:Text("Watchlist",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.redeem,color: Colors.white,),
                title:Text("Prizes",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.create_new_folder,color: Colors.white,),
                title:Text("Channels",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.g_translate,color: Colors.white,),
                title:Text("Languages",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.support_agent,color: Colors.white,),
                title:Text("Genres",style:TextStyle(color: Colors.white,)),
              ),
              Divider(
                thickness: 1,
                color: Colors.white30,
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.white,),
                title:Text("Preferences",style:TextStyle(color: Colors.white,)),
              ),
              ListTile(
                leading: Icon(Icons.help_outlined,color: Colors.white,),
                title:Text("Help",style:TextStyle(color: Colors.white,)),
              ),
              
            ]
          ),
        ),
      ),
    );
  }
}