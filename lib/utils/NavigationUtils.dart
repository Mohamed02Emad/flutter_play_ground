import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(StatelessWidget screen , BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen ),
    );
}

void navigateUp( BuildContext context){
  Navigator.pop(context);
}