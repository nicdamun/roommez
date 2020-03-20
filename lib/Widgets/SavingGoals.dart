import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roommmez/Constants/GeneralConstants.dart';
import 'package:roommmez/Widgets/SavingGoalsItems.dart';

class SavingGoals extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return _SavingGoalsState();
    }
}

class _SavingGoalsState extends State<SavingGoals> {

    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createHorizontalListView() {
        return Container(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                    return SavingGoalsItem();
                },
                separatorBuilder: (_, __) {
                    return Padding(padding: EdgeInsets.all(6));
                },
                itemCount: 10
            ),
        );
    }

    Widget _createMainContainer() {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: kSavingGoalsMainContainerPadding),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    _createTitleText(),
                    _createHorizontalListView()
                ],
            ),
        );
    }

    Widget _createTitleText() {
        return Text(
            "Saving Goals",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),
        );
    }
}