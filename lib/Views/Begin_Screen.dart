// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacylocate/Constants/Constants.dart';
import 'package:pharmacylocate/Data/Slide_Data.dart';
import 'package:pharmacylocate/Widgets/Page_Slide_Widgets.dart';

class Begin extends StatefulWidget {
  Begin({Key? key}) : super(key: key);

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  late PageController _pageController;
  late int _isActiveIndex;

  @override
  void initState() {
    _pageController = PageController();
    _isActiveIndex = 0;
    super.initState();
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _handlePageChange({index}) {
    setState(() {
      _isActiveIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) => _handlePageChange(index: value),
                    itemCount: slides.length,
                    itemBuilder: (context, index) {
                      return PageViewSlide(slide: slides[index]);
                    }),
                Positioned(
                    bottom: 150,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        for (var i = 0; i < slides.length; i++)
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: _isActiveIndex == i
                                    ? Colors.white
                                    : Color.fromARGB(255, 41, 35, 35),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
