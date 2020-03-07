import 'package:flutter/material.dart';
import 'package:roommmez/Screens/HomeScreen.dart';

void main() => runApp(RoommmezApp());

class RoommmezApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: HomeScreen(),
        );
    }
}