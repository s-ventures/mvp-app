import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomPopupMenuButton extends StatefulWidget {
  const CustomPopupMenuButton(
      {super.key,
      this.showCloseIcon = false,
      this.icon = IconAssets.ellipsisVertical,
      this.text = '',
      this.buttonSize = ButtonSize.extraSmall,
      this.buttonType = ButtonType.outlined,
      this.buttonBackground = Colors.white,
      this.buttonForeground = Colors.black,
      this.menuColor = Colors.white,
      this.menuSurfaceTintColor = Colors.white,
      required this.items});

  final bool showCloseIcon;
  final String icon;
  final String text;
  final ButtonSize buttonSize;
  final ButtonType buttonType;
  final Color buttonBackground;
  final Color buttonForeground;
  final Color menuSurfaceTintColor;
  final Color menuColor;
  final List<PopupMenuEntry> items;

  @override
  CustomPopupMenuButtonState createState() => CustomPopupMenuButtonState();
}

class CustomPopupMenuButtonState extends State<CustomPopupMenuButton> {
  late double height, width, xPosition, yPosition;
  bool isMenuOpen = false;

  void findButton(BuildContext context) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  void showPopupMenu(BuildContext context) {
    findButton(context);
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        xPosition,
        yPosition + height + 8,
        width / 2,
        0,
      ),
      color: widget.menuColor,
      surfaceTintColor: widget.menuSurfaceTintColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.radius.soft),
      ),
      items: widget.items,
    ).then((_) {
      setState(() {
        isMenuOpen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Button(
      icon: widget.text != ''
          ? null
          : isMenuOpen && widget.showCloseIcon
              ? IconAssets.xMark
              : widget.icon,
      title: widget.text == '' ? null : widget.text,
      type: widget.buttonType,
      size: widget.buttonSize,
      background: widget.buttonBackground,
      foreground: widget.buttonForeground,
      onPressed: () async {
        setState(() {
          isMenuOpen = true;
        });

        showPopupMenu(context);
      },
    );
  }
}
