import 'package:flutter/material.dart';

class Game extends StatefulWidget 
{
  const Game({ Key? key }) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rock Paper Scissors"),
        centerTitle: true,
      ),

      body: Center(

        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.amber),
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //text
              const Text(
                "Computer Choice:", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //image
              const Text("Hand Emoji IMAGE><><><<><"),

              //text
              const Text(
                "You Win / You Lose", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //row with 3 images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("img1"),
                  Text("img2"),
                  Text("img3"),
                ],
              ),

            ], //Children

          ),

        ),

      ),

    );

  }
}