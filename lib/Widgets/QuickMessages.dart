import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:roommmez/Constants/GeneralConstants.dart';
import 'package:roommmez/Core/ViewModels/QuickMessageViewModel.dart';
import 'package:roommmez/Widgets/QuickMessagesItem.dart';

import 'QuickMessagesItem.dart';
import 'QuickMessagesItem.dart';

class QuickMessages extends StatefulWidget {
    
    @override
    _QuickMessagesState createState() => _QuickMessagesState();
}

class _QuickMessagesState extends State<QuickMessages> {
    
    @override
    void initState() {
        super.initState();
        Provider.of<QuickMessageViewModel>(context, listen: false).getQuickMessages();
    }
    
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }
    
    ///Create Horizontal ListView
    Widget _createHorizontalListView() {
        return Container(
            child: Consumer<QuickMessageViewModel>(
                builder: (_, quickMessageViewModel, __) => ListView.separated(
                    itemCount: quickMessageViewModel.quickMessages.length,
                    separatorBuilder: (_, index) {
                        return index == 0
                            ? Padding(padding: EdgeInsets.only(right: 16))
                            : Padding(padding: EdgeInsets.all(8));
                    },
                    itemBuilder: (_, index) {
                        return QuickMessagesItem(quickMessageModel: quickMessageViewModel.quickMessages[index]);
                    },
                    scrollDirection: Axis.horizontal,
                ),
            ),
            height: 170,
            padding: EdgeInsets.only(bottom: 10),
        );
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
