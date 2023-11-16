import 'package:flutter/material.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/VerticalSpacer.dart';

class LbUpperNavBar extends StatefulWidget {
  const LbUpperNavBar({super.key});

  @override
  State<LbUpperNavBar> createState() => _LbUpperNavBarState();
}

class _LbUpperNavBarState extends State<LbUpperNavBar> {
  var _selected = 0;

  @override
  Widget build(BuildContext context) {
    return
       Padding(
        padding: const EdgeInsets.only(left: 30,right: 30 , top : 4 , bottom : 4),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 30, 34, 55),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              HorizontalSpacer(space: 10),
              _getClickableItem(0, "Regional"),
              _getClickableItem(1, "National"),
              _getClickableItem(2, "Global"),
              HorizontalSpacer(space: 10),
            ],
          ),
        ),
    );
  }

  Widget _getClickableItem(int index, String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selected = index;
        });
      },
      child: Column(children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        VerticalSpacer(space: 10),
        if (_selected == index)
          SizedBox(
            height: 3,
            width: 30,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 105, 155, 247),
              ),
            ),
          ),
      ]),
    );
  }
}
