import 'package:flutter/material.dart';

class CustomTabBarIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabBarIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    //offset is the position from where the decoration should be drawn.
    //configuration.size tells us about the height and width of the tab.
    assert(configuration.size != null);

    Size size = configuration.size!;
    size = Size(size.width - 20 - 20, 40);

    offset = Offset(offset.dx + 20, offset.dy + 2);

    final Rect rect = offset & size;
    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(10.0)),
      paint,
    );

    final Rect rect2 = offset & size;
    final Paint paint2 = Paint();
    paint2.color = const Color(0xFFF4F4FC);
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 1;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect2, const Radius.circular(10.0)),
      paint2,
    );
  }
}
