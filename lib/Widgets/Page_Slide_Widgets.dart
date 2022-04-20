import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Models/Slide_Model.dart';

class PageViewSlide extends StatelessWidget {
  const PageViewSlide({Key? key, required this.slide}) : super(key: key);
  final Slide slide;
  @override
  Widget build(BuildContext context) {
    return   Column(
     // mainAxisAlignment: MainAxisAlignment.center,
         children: [
            const SizedBox(
          height: 150,
        ),
      
          slide.svgUrl!,
   
        const SizedBox(
          height: 95,
        ),
          slide.widget!
          ],
         
        );
  }
}
