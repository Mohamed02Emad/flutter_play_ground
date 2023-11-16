import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LbAppBar {
  PreferredSizeWidget getAndroid(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 21, 23, 41),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
        color: const Color.fromARGB(255, 105, 155, 247),
      ),
      title: const Text(
        "LeaderBoard",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: const Color.fromARGB(255, 105, 155, 247),
        )
      ],
    );
  }

  ObstructingPreferredSizeWidget getIos(BuildContext context) {
    return CupertinoNavigationBar(
      leading: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.back,
          color: Color.fromARGB(255, 105, 155, 247),
        ),
      ),
      middle: const Text(
        "LeaderBoard",
        style: TextStyle(color: Colors.white),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.bars,
              color: Color.fromARGB(255, 105, 155, 247),
            ),
          ),
        ],
      ),
      border: null,
      backgroundColor: const Color.fromARGB(255, 21, 23, 41),
    );
  }
}
