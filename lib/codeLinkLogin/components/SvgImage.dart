import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  double _height = double.infinity ;
  double _width = double.infinity ;
  String _svgName = "";
   SvgImage({super.key , double height = double.infinity, double width = double.infinity ,required String svgName}){
     _height = height;
     _width = width;
     _svgName = svgName;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: _width,
        height: _height,
        child: SvgPicture.asset(
          'assets/images/$_svgName.svg',
          semanticsLabel: 'Login Image',
          width: _width,
          height: _height,
        ),
      ),
    );
  }
}
