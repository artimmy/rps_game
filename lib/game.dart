import 'dart:math';
import 'package:flutter/material.dart';

class Game extends StatefulWidget 
{
  const Game({ Key? key }) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> 
{

  var _imageCpuChoice = const AssetImage("images/default.png");
  String _textResult = "Choose an option below";
  
  void _selectedOption(int userChoice)
  {
    const options = [1,2,3];
    int optionsIndex = Random().nextInt(3);
    var cpuChoice = options[optionsIndex];
    
    switch (cpuChoice) 
    {
      case 1:
        setState(() => _imageCpuChoice = const AssetImage("images/rock.png"));
        break;
      case 2:
        setState(() => _imageCpuChoice = const AssetImage("images/paper.png"));
        break;
      case 3:
        setState(() => _imageCpuChoice = const AssetImage("images/scissor.png"));
        break;
    }

    // Winner Validation
    //User Winner
    if(
        (userChoice == 1 && cpuChoice == 3) ||
        (userChoice == 3 && cpuChoice == 2) ||
        (userChoice == 2 && cpuChoice == 1)
    )
    {
      setState(() {
        _textResult = "Congrats!!! You Win :)";
      });
    
    }
    // Cpu Winner
    else if(
        (cpuChoice == 1 && userChoice == 3) ||
        (cpuChoice == 3 && userChoice == 2) ||
        (cpuChoice == 2 && userChoice == 1)
    )
    {
      setState(() 
      {
        _textResult = "You Lose :(";
      });
    }
    // Tie
    else
    {
      setState(() 
      {
        _textResult = "We have a draw ;)";
      });
    }
  }

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
          padding: const EdgeInsets.all(15),

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

              // image
              Image(image: _imageCpuChoice),

              // text
              Text(
                _textResult, 
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // row with 3 clickable images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  InkWell(
                    // When the user taps the button, show a snackbar.
                    onTap: () => _selectedOption(1),
                    child: Image.asset("images/rock.png", height: 100),
                  ),
                  InkWell(
                    // When the user taps the button, show a snackbar.
                    onTap: () => _selectedOption(2),
                    child: Image.asset("images/paper.png", height: 100),
                  ),
                  InkWell(
                    // When the user taps the button, show a snackbar.
                    onTap: () => _selectedOption(3),
                    child: Image.asset("images/scissor.png", height: 100),
                  ),
                   
                ], // Row Children

              ),

            ], // Children

          ),

        ),

      ),

    );

  }
}