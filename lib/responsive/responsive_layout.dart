import 'package:flutter/material.dart';
import 'dimensions.dart';

// import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  // const ResponsiveLayout({super.key});

  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
