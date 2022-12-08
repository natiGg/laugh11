import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SeeJokeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeeJokeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SeeJokeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
