import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                _createImageShadowContainer(),
                _createBottomContainer()
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
        return Image.network(
            "http://pngimg.com/uploads/christmas_tree/christmas_tree_PNG137.png"
        );
    }

    Widget _createBottomContainer() {
        return Column(
            children: <Widget>[
                _createScoreContainer(),
                _createSavingGoalTitle()
            ],
        );
    }

    Widget _createScoreContainer() {
        return Row(
            children: <Widget>[
                _createCurrentSavingText(Colors.green),
                _createTotalSavingText(Colors.black54)
            ],
        );
    }

    Widget _createCurrentSavingText(Color color) {
        return Text(
            "200",
            style: GoogleFonts.openSans(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
        );
    }

    Widget _createTotalSavingText(Color color) {
        return Text(
            " / 250 PLN",
            style: GoogleFonts.openSans(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
        );
    }

    Widget _createSavingGoalTitle() {
        return Text(
            "Christmas party",
            style: GoogleFonts.poppins(
                color: Colors.blue[900],
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
        );
    }
}
