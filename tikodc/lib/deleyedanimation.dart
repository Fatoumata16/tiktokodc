import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class delaayedanimated extends StatefulWidget {
  final Widget child;
  final int delay;
  const delaayedanimated({required this.delay, required this.child});

  @override
  State<delaayedanimated> createState() => _delaayedanimatedState();
}

class _delaayedanimatedState extends State<delaayedanimated>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> _animOffset;
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 500,
        ));
    final curve = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );
    _animOffset = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(microseconds: widget.delay), () {
      controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: controller,child: SlideTransition(position: _animOffset,child: widget.child,),);
  }
}
