import 'package:flutter/material.dart';

class BouncedButton extends StatefulWidget {
  final Widget child;
  final void Function()? onTap;

  const BouncedButton({super.key, required this.child, this.onTap});

  @override
  State<BouncedButton> createState() => _BouncedButtonState();
}

class _BouncedButtonState extends State<BouncedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      upperBound: 0.1,
      lowerBound: 0.0,
    );

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    _scale = (1 - _controller.value);
    return InkWell(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTap: widget.onTap,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }
}
