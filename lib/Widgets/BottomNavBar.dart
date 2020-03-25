import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:roommmez/Core/Models/BottomItemModel.dart';
import 'package:roommmez/Core/ViewModels/BottomNavBarViewModel.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createDot() {
        return Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.indigo[900],
                shape: BoxShape.circle
            ),
        );
    }

    Widget _createIconsContainer() {
        return Consumer<BottomNavBarViewModel>(
            builder: (_, bottomNavBarViewModel, __) => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: bottomNavBarViewModel.bottomItems.map((bottomItem) => InkWell(
                    onTap: () => bottomNavBarViewModel.selectItem(bottomItem),
                    child: _createItemContainer(bottomItem),
                )).toList(),
            ),
        );
    }

    Widget _createMainContainer() {
        return Container(
            color: Colors.white,
            height: 80,
            child: _createIconsContainer(),
        );
    }

    Widget _createItemContainer(BottomItemModel bottomItemModel) {
        Widget bottomItem;
        if (bottomItemModel.isSelected == true) {
            bottomItem = _createTextItem(bottomItemModel.name);
        } else {
            bottomItem = _createIconItem(bottomItemModel.iconData);
        }
        return bottomItem;
    }
    
    Widget _createTextItem(String name) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                _createSelectedText(name),
                _createDot()
            ],
        );
    }

    Widget _createSelectedText(String name) {
        return Text(
            name,
            style: GoogleFonts.poppins(
                color: Colors.indigo[900],
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
        );
    }

    Widget _createIconItem(IconData iconData) {
        return Icon(
            iconData,
            color: Colors.black26,
            size: 30,
        );
    }
}