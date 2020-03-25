import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roommmez/Core/ViewModels/BottomNavBarViewModel.dart';
import 'package:roommmez/Core/ViewModels/QuickMessageViewModel.dart';
import 'package:roommmez/Screens/HomeScreen.dart';

void main() => runApp(
    MultiProvider(
        providers: [
            ChangeNotifierProvider(
                create: (_) => BottomNavBarViewModel(),
            ),
            ChangeNotifierProvider(
                create: (_) => QuickMessageViewModel(),
            )
        ],
        child: RoommmezApp(),
    )
);

class RoommmezApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: HomeScreen(),
        );
    }
}