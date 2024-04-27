import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CardWithBoolOptions extends StatefulWidget {
  const CardWithBoolOptions({
    required this.title,
    this.initialValue,
    this.onChanged,
    this.inner = false,
    super.key,
  });

  final String title;
  final bool? initialValue;
  final ValueChanged<bool>? onChanged;
  final bool inner;

  @override
  State<CardWithBoolOptions> createState() => _CardWithBoolOptionsState();
}

class _CardWithBoolOptionsState extends State<CardWithBoolOptions> {
  late bool _groupValue = widget.initialValue ?? false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        widget.inner ? 0 : AppSpacing.s5,
      ),
      decoration: ShapeDecoration(
        color:
            widget.inner ? Colors.transparent : context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.radius.hard,
          ),
          side: BorderSide(
            color: widget.inner
                ? Colors.transparent
                : context.color.strokeLigth100,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s5,
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: context.color.backgroundLight0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.radius.soft,
                      ),
                      side: BorderSide(
                        color: context.color.strokeLigth100,
                      ),
                    ),
                  ),
                  child: RadioListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.only(
                      left: AppSpacing.s4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.radius.soft,
                      ),
                    ),
                    title: Text(
                      'Si',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    value: true,
                    groupValue: _groupValue,
                    onChanged: (value) => {
                      widget.onChanged?.call(value!),
                      setState(() {
                        _groupValue = value!;
                      }),
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
              AppSpacing.horizontal.s3,
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: context.color.backgroundLight0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.radius.soft,
                      ),
                      side: BorderSide(
                        color: context.color.strokeLigth100,
                      ),
                    ),
                  ),
                  child: RadioListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.only(
                      left: AppSpacing.s4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.radius.soft,
                      ),
                    ),
                    title: Text(
                      'No',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    value: false,
                    groupValue: _groupValue,
                    onChanged: (value) => {
                      widget.onChanged?.call(value!),
                      setState(() {
                        _groupValue = value!;
                      }),
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
