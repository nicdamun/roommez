import 'package:flutter/material.dart';

class SavingGoalsItem extends StatefulWidget {
    @override
    _SavingGoalsItemState createState() => _SavingGoalsItemState();
}

class _SavingGoalsItemState extends State<SavingGoalsItem> {
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createMainContainer() {
        return Container(
            width: 160,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: _createSavingGoalsColumnContainer(),
        );
    }

    Widget _createSavingGoalsColumnContainer() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                _createImageShadowContainer()
            ],
        );
    }

    Widget _createImageShadowContainer() {
        return Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.blueGrey[50],
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(
                            0, 10
                        )
                    )
                ]
            ),
            child: _createImage(),
        );
    }
    
    Widget _createImage() {
        return Image.network("http://pngimg.com/uploads/christmas_tree/christmas_tree_PNG137.png",);
    }
}
