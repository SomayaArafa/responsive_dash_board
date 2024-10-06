import 'package:flutter/material.dart';
import 'package:untitled/widgets/adaptive_layout.dart';
import 'package:untitled/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayOut: (context)=>const SizedBox(),
          tabletLayOut: (context)=>const SizedBox(),
          desktopLayOut: (context)=>const DashBoardDesktopLayout() ),
    );
  }
}
