import 'package:flutter/widgets.dart';

extension WidgetX on Widget {
  Widget get sliver => SliverToBoxAdapter(
        child: this,
      );

  Widget sliverSized({AlignmentDirectional alignment = AlignmentDirectional.center}) => SliverToBoxAdapter(
        child: Align(
          alignment: alignment,
          child: this,
        ),
      );
}
