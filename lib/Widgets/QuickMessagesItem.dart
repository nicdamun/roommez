import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roommmez/Core/Models/QuickMessageModel.dart';

class QuickMessagesItem extends StatelessWidget {
    
    final QuickMessageModel quickMessageModel;
    
    QuickMessagesItem({this.quickMessageModel});
    
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createCircularImageContainer() {
        return Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: _createImage(),
                    fit: BoxFit.cover
                )
            ),
        );
    }

    ImageProvider _createImage() {
        return NetworkImage(
            quickMessageModel.image
        );
    }

    ///Create main container
    Widget _createMainContainer() {
        return _createMessageContainer();
    }

    Widget _createMessageContainer() {
        return Column(
            children: <Widget>[
                _createCircularImageContainer(),
                Padding(padding: EdgeInsets.all(4)),
                _createText()
            ],
        );
    }

    Widget _createText() {
        return Text(
            quickMessageModel.name,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
        );
    }
}