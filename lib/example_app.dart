import 'package:flutter/material.dart';
import 'package:gradient_scaffold/gradient_scaffold.dart';

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      gradientBegin: Alignment.topLeft,
      gradientEnd: Alignment.bottomRight,
      gradientColors: [
        Color(0xFF159DFF),
        Color(0xFF157DDF)
      ], //list of colors you want to use
      gradientStops: [0.0, 0.5], //list of stops you want to use
      appBarTitle: "Example App", //title that appears on your appBar
      appBarElevation: 0.0,
      appBarActions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.info),
        )
      ],
      body: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.white,
      ), // this is the scaffold body
    );
  }
}
