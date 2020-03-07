import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickMessagesItem extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createImage() {
        return Image.network(
            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
            width: 120,
            height: 120,
        );
    }

    ///Create main container
    Widget _createMainContainer() {
        return _createMessageContainer();
    }

    Widget _createMessageContainer() {
        return Column(
            children: <Widget>[
                _createImage(),
                _createText()
            ],
        );
    }

    Widget _createText() {
        return Text(
            "Emilia",
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
        );
    }
}