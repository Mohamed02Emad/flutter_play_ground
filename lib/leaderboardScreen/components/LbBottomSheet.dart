import 'package:flutter/material.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/VerticalSpacer.dart';

import '../../codeLinkLogin/components/SvgImage.dart';
import '../models/LbPerson.dart';

class LbBottomSheet extends StatelessWidget {
  const LbBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var _users = <LbPerson>[
      LbPerson('Olivia', 'olivia345', '7890'),
      LbPerson('Grace', 'grace901', '7790'),
      LbPerson('Frank', 'frank678', '6789'),
      LbPerson('Noah',  'noah012', '6789'),
      LbPerson('Isabella',  'isabella567', '6543'),
      LbPerson('Mia', 'mia789', '5678'),
      LbPerson('Emma',  'emma345', '5458'),
      LbPerson('Katherine',  'katherine123', '5432'),
      LbPerson('Liam', 'liam456', '4567'),
      LbPerson('Jack', 'jack890', '4321'),
      LbPerson('David', 'david012', '4247'),
      LbPerson('Charlie', 'charlie789', '3456'),
      LbPerson('Henry',  'henry234', '3455'),
      LbPerson('Bob',  'bob456', '2345'),
      LbPerson('Alice', 'alice123', '1234'),
    ];

    return ClipRRect(
       borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
       ),
      child: Material(
        elevation: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 30, 34, 55),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 12),
            itemCount: _users.length,
            itemBuilder: (BuildContext context, int index) {
              return _getLBCard(_users[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget _getLBCard(LbPerson lbPerson) {
    String arrow = "";
    if (lbPerson.isUp) {
      arrow = "ic_up";
    } else {
      arrow = "ic_down";
    }

    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          VerticalSpacer(space: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/${lbPerson.image}'),
                ),
              ),
              HorizontalSpacer(space: 8),
              Column(
                children: [
                  Text(
                    lbPerson.name,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  VerticalSpacer(
                    space: 10,
                  ),
                  Text(
                    lbPerson.userName,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SizedBox(
                      height: 10,
                      width: 10,
                      child: SvgImage(
                        height: 10,
                        width: 10,
                        svgName: arrow,
                      )),
                  VerticalSpacer(
                    space: 4,
                  ),
                  Text(
                    lbPerson.score,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ],
          ),
          VerticalSpacer(space: 8),
          SizedBox(
            height: 3,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
