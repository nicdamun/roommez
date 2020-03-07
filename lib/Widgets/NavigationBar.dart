import 'package:flutter/material.dart';
import 'package:roommmez/Constants/GeneralConstants.dart';

class NavigationBar extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    ///Create inner container
    Widget _createInnerContainer() {
        return Row(
            children: <Widget>[
                Text("Roommmez",
                    style: TextStyle(
                        fontSize: kNavigationBarTitleFontSize,
                        fontWeight: FontWeight.w700
                    ),
                ),
                Expanded(child: SizedBox()),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kNavigationBarProfileRadius),
                        color: Colors.orange,
                    ),
                    height: kNavigationBarProfileHeight,
                    width: kNavigationBarProfileWidth,
                )
            ],
        );
    }

    ///Create main container
    Widget _createMainContainer() {
        return Container(
            child: _createInnerContainer(),
            color: Colors.white,
            height: kNavigationBarHeight,
            padding: EdgeInsets.symmetric(horizontal: kMargins),
        );
    }
}