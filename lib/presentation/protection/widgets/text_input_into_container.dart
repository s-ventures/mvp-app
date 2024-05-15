import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TextInputIntoContainer extends StatelessWidget {
  const TextInputIntoContainer({
    required this.title,
    this.initialValue,
    this.suffixText,
    this.onChanged,
    super.key,
  });

  final String title;
  final String? initialValue;
  final String? suffixText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s4,
        vertical: AppSpacing.s3,
      ),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          const Spacer(),
          Expanded(
            child: TextInput(
              contentPadding: const EdgeInsets.symmetric(
                vertical: AppSpacing.s2,
                horizontal: AppSpacing.s3,
              ),
              size: TextInputSize.extraSmall,
              fillColor: context.color.strokeLigth100,
              controller: TextEditingController(
                text: initialValue,
              ),
              suffixText: suffixText,
              maxLines: 1,
              textAlign: TextAlign.center,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
