import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/VerticalSpacer.dart';
import 'package:flutter_play_ground/leaderboardScreen/components/LbAppBar.dart';
import 'package:flutter_play_ground/leaderboardScreen/components/TopThreeWidget.dart';

import 'components/LbBottomSheet.dart';
import 'components/LbUpperNavigationBar.dart';
import 'models/LbPerson.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const LeaderBoardScreen(),
    );
  }
}

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    if (Platform.isAndroid) {
      return Scaffold(
        appBar: LbAppBar().getAndroid(context),
        backgroundColor: const Color.fromARGB(255, 21, 23, 41),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: _getLbScreen(),
          ),
        ),
      );
    } else {
      return CupertinoPageScaffold(
        backgroundColor: const Color.fromARGB(255, 21, 23, 41),
        navigationBar: LbAppBar().getIos(context),
        child: Padding(
          padding: EdgeInsets.only(top: statusBarHeight, left: 12, right: 12),
          child: Column(
            children: _getLbScreen(),
          ),
        ),
      );
    }
  }

  List<Widget> _getLbScreen() {
    return [
      const Padding(
        padding: EdgeInsets.only(
          top: 0,
          left: 12,
          right: 12,
        ),
        child: LbUpperNavBar(),
      ),
      VerticalSpacer(
        space: 20,
      ),
      TopThreeWidget(
        LbPerson('Mohamed Emad', 'mohamed453', '7890'),
        LbPerson('Ahmed Mohamed',  'ahmed2345', '7890'),
        LbPerson('Emad Mohamed',  'emad2345', '7890'),
      ),
      const Spacer(),
      const LbBottomSheet(),
    ];
  }
}
