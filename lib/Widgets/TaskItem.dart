import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {

    final bool isActive;
    final List<String> hola;

    TaskItem({
        bool hola = false,
        List<String> pHola
    }): isActive = hola, hola = pHola ?? <String>[], assert(hola != null, "Hola cannot be null");

    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    Widget _createMainContainer() {
        return Row(
            children: <Widget>[
                _createRadioButton()
            ],
        );
    }

    Widget _createRadioButton() {
        Color backgroundColor = isActive ? Colors.red : Colors.grey[50];
        Color borderColor = isActive ? Colors.red : Colors.grey[400];
        return AnimatedContainer(
            width: 25,
            height: 25,
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: backgroundColor,
                border: Border.all(
                    color: borderColor,
                    width: 2
                )
            ),
        );
    }
}
