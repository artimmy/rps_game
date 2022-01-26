import 'package:flutter/material.dart';
import 'package:rps_game/game.dart';
void main()
{
  runApp(const MaterialApp(
    home: Game(),
    debugShowCheckedModeBanner: false,
  ));
}