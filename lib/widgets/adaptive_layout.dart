import 'package:flutter/material.dart';
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayOut, required this.tabletLayOut, required this.desktopLayOut});
final WidgetBuilder mobileLayOut,tabletLayOut,desktopLayOut;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrains) {
          if(constrains.maxWidth<600){
            return mobileLayOut(context);

          }
          else if (constrains.maxWidth<900){
            return tabletLayOut(context);
          }
          else{
            return desktopLayOut(context);

          }

        }
    );
  }
}
