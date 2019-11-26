library gradient_scaffold;

import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  GradientScaffold({
    @required this.gradientStops,
    @required this.gradientColors,
    @required this.gradientEnd,
    @required this.gradientBegin,
    @required this.appBarTitle,
    this.appBarElevation,
    this.appBarActions,
    this.body,
  });

  final AlignmentGeometry gradientBegin, gradientEnd;
  final List<Color> gradientColors;
  final List<double> gradientStops;
  final String appBarTitle;
  final double appBarElevation;
  final List<Widget> appBarActions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: gradientBegin,
          end: gradientEnd,
          colors: gradientColors,
          stops: gradientStops,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: Colors.transparent,
          elevation: appBarElevation == null ? 0.0 : appBarElevation,
          actions: appBarActions,
        ),
        body: body,
      ),
    );
  }
}
