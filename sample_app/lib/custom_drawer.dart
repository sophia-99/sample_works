import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final double maxSlide = 225.0;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void toggle() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  Widget build(BuildContext context) {
    GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      onTap: toggle,
          child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, i) {
            double slide = maxSlide * _animationController.value;
            double scale = 1 - _animationController.value * 0.3;
            var myDrawer = Container(color: Colors.blue);
            var myChild = Container(color: Colors.yellow);
            return Stack(
              children: [
                myDrawer,
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: myChild,
                ),
              ],
            );
          }),
    );
  }
  void _onDragStart(DragStartDetails details){

  }
  void _onDragUpdate(DragUpdateDetails details){

  }
  void _onDragEnd(DragEndDetails details){

  }

}
