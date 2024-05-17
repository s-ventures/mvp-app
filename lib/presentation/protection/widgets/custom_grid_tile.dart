import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomGridTile extends StatefulWidget {
  const CustomGridTile({
    required this.icon,
    required this.title,
    this.isSelected = false,
    super.key,
  });

  final String icon;
  final String title;
  final bool isSelected;

  @override
  State<CustomGridTile> createState() => _CustomGridTileState();
}

class _CustomGridTileState extends State<CustomGridTile> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = _isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s2),
      child: Container(
        decoration: ShapeDecoration(
          color: _isChecked ? context.color.tertiaryLight100 : context.color.backgroundLight0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.radius.soft),
            side: BorderSide(
              color: _isChecked ? context.color.tertiaryLight400 : context.color.strokeLigth100,
            ),
          ),
        ),
        child: Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          onPressed: () async => setState(() {
            _isChecked = !_isChecked;
          }),
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.s5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconSvg.medium(
                      widget.icon,
                      color:
                          _isChecked ? context.color.tertiaryLight500 : context.color.iconLight600,
                    ),
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.s2),
                      decoration: ShapeDecoration(
                        color:
                            _isChecked ? context.color.secondary : context.color.backgroundLight0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            context.radius.checkboxSmall,
                          ),
                          side: BorderSide(
                            color:
                                _isChecked ? context.color.secondary : context.color.strokeLigth100,
                          ),
                        ),
                      ),
                      child: IconSvg.small(
                        IconAssets.check,
                        color: context.color.backgroundLight0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  widget.title,
                  style: context.textStyle.buttonTabBar.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
