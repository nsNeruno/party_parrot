import 'dart:math';

import 'package:flutter/material.dart';
import 'package:party_parrot/party_parrot.dart';

void main() => runApp(
  PartyParrotExampleApp(),
);

class PartyParrotExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Party Parrot App",),
      ),
      body: Column(
        children: [
          Row(
            children: [
              PartyParrot(),
              Spacer(),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi,),
                child: PartyParrot(),
              ),
            ],
          ),
          Spacer(),
          PartyParrot(),
          Spacer(),
          Row(
            children: [
              PartyParrot(),
              Spacer(),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi,),
                child: PartyParrot(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}