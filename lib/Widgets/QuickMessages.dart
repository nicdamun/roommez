import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roommmez/Constants/GeneralConstants.dart';
import 'package:roommmez/Widgets/QuickMessagesItem.dart';

import 'QuickMessagesItem.dart';
import 'QuickMessagesItem.dart';

class QuickMessages extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    // MARK: - Private Methods
    ///Create Horizontal ListView
    Widget _createHorizontalListView() {
        return Container(
            child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (_, index) {
                    return index == 0
                        ? Padding(padding: EdgeInsets.only(right: 16))
                        : Padding(padding: EdgeInsets.all(8));
                },
                itemBuilder: (_, index) {
                    return QuickMessagesItem();
                },
                scrollDirection: Axis.horizontal,
            ),
            height: 170,
            padding: EdgeInsets.only(bottom: 10),
        );
    }

    List<Widget> _createQuickMessagesList() {
        return List.generate(5, (_) => QuickMessagesItem());
    }

    ///Create inner column
    Widget _createInnerColumn() {
        return Container(
            color: Colors.white,
            child: Column(
                children: <Widget>[
                    _createTitle(),
                    _createSeparation(),
                    _createHorizontalListView()
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
            ),
        );
    }

    ///Create main container
    Widget _createMainContainer() {
        return Container(
            child: _createInnerColumn(),
            padding: EdgeInsets.symmetric(horizontal: kMargins),
        );
    }

    ///Create Separation
    Widget _createSeparation() {
        return SizedBox(
            height: 10,
        );
    }

    ///Create Title
    Widget _createTitle() {
        return Text(
            "Quick Messages",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),
            textAlign: TextAlign.left,
        );
    }
}
