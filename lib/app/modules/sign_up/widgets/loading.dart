import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingDefault extends StatefulWidget {
  const LoadingDefault({super.key});

  @override
  State<LoadingDefault> createState() => _LoadingDefaultState();
}

class _LoadingDefaultState extends State<LoadingDefault> {
  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.staggeredDotsWave(
        color: Colors.amber, size: 40);
  }
}
