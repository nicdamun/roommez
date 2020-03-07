import 'package:flutter/material.dart';
import 'package:roommmez/Widgets/NavigationBar.dart';
import 'package:roommmez/Widgets/QuickMessages.dart';
import 'package:roommmez/Widgets/SavingGoals.dart';

class HomeScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                child: _createMainContainer(),
                color: Colors.white,
            ),
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
                    SavingGoals()
                ]
            ),
        );
    }
}