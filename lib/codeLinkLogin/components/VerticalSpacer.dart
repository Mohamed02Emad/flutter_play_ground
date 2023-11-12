import 'package:flutter/cupertino.dart';

class VerticalSpacer extends StatelessWidget {
  var _space = 20.0;

  VerticalSpacer({super.key, double space = 20}){
    _space = space;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: _space,
    );
  }
}
