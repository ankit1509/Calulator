import 'package:flutter/material.dart';

class CalculatorAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CalculatorAppBar({Key key, this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          // init an empty onPressed callback
          onPressed: () {
            // make a toast 
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('This is a calculator app'),
              ),
            );
          },
        )
      ],
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}