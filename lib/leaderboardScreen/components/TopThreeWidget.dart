import 'package:flutter/material.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/VerticalSpacer.dart';
import 'package:flutter_play_ground/leaderboardScreen/models/LbPerson.dart';

import '../../codeLinkLogin/components/SvgImage.dart';

class TopThreeWidget extends StatelessWidget {
  TopThreeWidget(this._first, this._second, this._third, {super.key});

  LbPerson _first;

  LbPerson _second;

  LbPerson _third;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _SecondWidget(_second),
            _FirstWidget(_first),
            _ThirdWidget(_third)
          ],
        ),
      ),
    ]);
  }
}

class _FirstWidget extends StatelessWidget {
  _FirstWidget(this._first, {super.key});

  LbPerson _first;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          Container(
            width: 120,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 120,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 37, 42, 64),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 160,
              left: 0,
              right: 0,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(_first.image),
                  ),
                ),
              )),
          Positioned(
            bottom: 235,
            left: 0,
            right: 0,
            child: SvgImage(
              height: 50,
              width: 50,
              svgName: "ic_crown",
            ),
          ),
           Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(space: 10),
                Text(_first.name,
                  style: const TextStyle(
                    color: Colors.white,
                      fontSize: 12
                  ),
                ),
                Text(_first.score,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 251, 150, 57),
                    fontSize: 12
                  ),

                ),
                Text("@${_first.userName}",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10
                  ),),
                VerticalSpacer(space: 10),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondWidget extends StatelessWidget {
  _SecondWidget(this._second, {super.key});

  LbPerson _second;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          Container(
            width: 120,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 120,
              height: 140,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 30, 34, 55),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_second.image),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(space: 10),
                Text(_second.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
                Text(_second.score,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 155, 214),
                      fontSize: 12
                  ),

                ),
                Text("@${_second.userName}",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10
                  ),),
                VerticalSpacer(space: 10),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThirdWidget extends StatelessWidget {
  _ThirdWidget(this._third, {super.key});

  LbPerson _third;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          Container(
            width: 120,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 120,
              height: 140,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 30, 34, 55),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_third.image),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(space: 10),
                Text(_third.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
                Text(_third.score,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 217, 75),
                      fontSize: 12
                  ),

                ),
                Text("@${_third.userName}",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10
                  ),),
                VerticalSpacer(space: 10),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
