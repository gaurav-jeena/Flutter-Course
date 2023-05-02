import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowAndCol extends StatelessWidget {
  const RowAndCol({super.key});
  _createContainer(MaterialColor m, {double w = 100, double h = 100}) {
    return Container(
      color: m,
      width: w,
      height: h,
    );

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _createContainer(Colors.green, w: 150, h: 200),
                _createContainer(Colors.yellow),
                _createContainer(Colors.red)
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
