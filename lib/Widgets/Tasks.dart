import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roommmez/Widgets/TaskItem.dart';

class Tasks extends StatefulWidget {
    @override
    _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
    @override
    Widget build(BuildContext context) {
        return _createMainContainer();
    }

    /// Creates main container
    Widget _createMainContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: _createColumnContainer(),
        );
    }

    /// Creates column container
    Widget _createColumnContainer() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                _createTasksTitle(),
                Padding(padding: EdgeInsets.all(16)),
                _createTaskColumn()
            ],
        );
    }

    /// Creates tasks title
    Widget _createTasksTitle() {
        return Text(
            "Tasks",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),
        );
    }

    Widget _createTaskColumn() {
        return Column(
            children: <Widget>[
                TaskItem(),
                Divider(color: Colors.black26),
                TaskItem(),
                Divider(color: Colors.black26),
                TaskItem(),
                Divider(color: Colors.black26),
                TaskItem(),
                Divider(color: Colors.black26),
            ],
        );
    }
}