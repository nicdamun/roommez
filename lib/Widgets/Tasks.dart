import 'package:flutter/material.dart';
import 'package:roommmez/Widgets/TaskItem.dart';

class Tasks extends StatefulWidget {
    @override
    _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
    @override
    Widget build(BuildContext context) =>
        _createMainContainer();

    /// Creates main container
    Widget _createMainContainer() {
        return Container(
            color: Colors.white,
            child: _createColumnContainer(),
        );
    }

    /// Creates column container
    Widget _createColumnContainer() {
        return Column(
            children: <Widget>[
                _createTasksTitle(),
                _createTaskColumn()
            ],
        );
    }

    /// Creates tasks title
    Widget _createTasksTitle() {
        return Text(
            "Tasks"
        );
    }

    Widget _createTaskColumn() {
        return Column(
            children: <Widget>[
                TaskItem()
            ],
        );
    }
}