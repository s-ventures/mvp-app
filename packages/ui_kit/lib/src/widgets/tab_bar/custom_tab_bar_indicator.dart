import 'package:flutter/material.dart';

class CustomTabBarIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);
  final CustomTabBarIndicator decoration;

  @override
  void paint(Canvas canvas, Offset o, ImageConfiguration configuration) {
    //offset is the position from where the decoration should be drawn.
    //configuration.size tells us about the height and width of the tab.
    assert(configuration.size != null, 'Size is null');

    var size = configuration.size!;
    size = Size(size.width - 20 - 20, 40);
    final offset = Offset(o.dx + 20, o.dy + 2);

    final rect = offset & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(10)),
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill,
    );

    final rect2 = offset & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect2, const Radius.circular(10)),
      Paint()
        ..color = const Color(0xFFF4F4FC)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
  }
}
