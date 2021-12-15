import 'package:flutter/material.dart';

class ModifiedText extends StatelessWidget {
  final String text;
  
  const ModifiedText({ Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        text, 
        maxLines:1,
        overflow: TextOverflow.ellipsis,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.white, 
          fontSize: 17,
          fontWeight: FontWeight.w500,
        )
      ),
    );
  }
}