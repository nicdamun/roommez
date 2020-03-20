import 'package:flutter/material.dart';
import 'package:roommmez/Widgets/BottomNavBar.dart';
import 'package:roommmez/Widgets/NavigationBar.dart';
import 'package:roommmez/Widgets/QuickMessages.dart';
import 'package:roommmez/Widgets/SavingGoals.dart';
import 'package:roommmez/Widgets/Tasks.dart';

class HomeScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[50],
            body: _createMainContainer(),
            bottomNavigationBar: BottomNavBar(),
        );
    }

    ///Create main container
    Widget _createMainContainer() {
        return SafeArea(
            child: Column(
                children: <Widget>[
                    NavigationBar(),
                    _createListView()
                ],
            ),
        );
    }

    ///Create ListView
    Widget _createListView() {
        return Expanded(
            child: ListView(
                children: <Widget>[
                    QuickMessages(),
                    SavingGoals(),
                    Padding(padding: EdgeInsets.all(16)),
                    Tasks()
                ]
            ),
        );
    }
}