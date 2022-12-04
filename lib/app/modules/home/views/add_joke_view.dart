import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddJokeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddJokeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddJokeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
