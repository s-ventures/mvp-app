import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_radius.dart';

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
    size = Size(size.width, 32);
    final offset = Offset(o.dx, o.dy);

    final rect = offset & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(const AppRadius().soft)),
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill,
    );

    final rect2 = offset & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect2, Radius.circular(const AppRadius().soft)),
      Paint()
        ..color = const Color(0xFFF4F4FC)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
  }
}
