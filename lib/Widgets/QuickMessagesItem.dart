import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickMessagesItem extends StatelessWidget {
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
            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
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
            "Emilia",
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
        );
    }
}