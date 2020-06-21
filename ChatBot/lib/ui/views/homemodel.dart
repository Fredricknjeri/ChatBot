import 'package:flutter/material.dart';

Widget _appBarText(double top) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          firstChild: const Text("Hi",
              style: TextStyle(
                fontSize: 28.0,
              )),
          secondChild: const Text("iChat",
              style: TextStyle(
                fontSize: 28.0,
              )),
          crossFadeState: top > 100.0
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 450),
          opacity: top < 100.0 ? 0.0 : 1.0,
          child: Visibility(
            visible: top < 100.0 ? false : true,
            child: Text(
              "i will be your assistant for today",
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }