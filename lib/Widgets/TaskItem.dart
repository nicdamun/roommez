import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskItem extends StatelessWidget {

    final bool isActive;

    TaskItem({bool isActive}): isActive = isActive ?? false;

    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createMainContainer() {
        return Row(
            children: <Widget>[
                _createRadioButton(),
                Padding(padding: EdgeInsets.all(8)),
                _createCenterColumnContainer(),
                Expanded(child: SizedBox()),
                _createCircularImageContainer()
            ],
        );
    }
    
    Widget _createCenterColumnContainer() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                _createDateText(),
                _createTaskDescriptionText()
            ],
        );
    }
    
    Widget _createDateText() {
        return Text(
            "Today",
            style: GoogleFonts.openSans(
                color: Colors.black26,
                fontSize: 12,
                fontWeight: FontWeight.normal
            ),
        );
    }

    Widget _createCircularImageContainer() {
        return Container(
            width: 30,
            height: 30,
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

    Widget _createRadioButton() {
        Color backgroundColor = isActive ? Colors.red : Colors.grey[50];
        Color borderColor = isActive ? Colors.red : Colors.grey[400];
        return AnimatedContainer(
            width: 20,
            height: 20,
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: backgroundColor,
                border: Border.all(
                    color: borderColor,
                    width: 1
                )
            ),
        );
    }

    Widget _createTaskDescriptionText() {
        return Text(
            "Buy almond milk",
            style: GoogleFonts.openSans(
                color: Colors.indigo[900],
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
        );
    }
}