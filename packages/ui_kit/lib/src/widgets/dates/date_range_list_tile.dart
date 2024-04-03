import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DateRangeListTile extends StatelessWidget {
  const DateRangeListTile({
    super.key,
    required this.startDate,
    this.startDateTitle = 'Desde',
    this.startDateOnChanged,
    required this.endDate,
    this.endDateTitle = 'Hasta',
    this.endDateOnChanged,
    this.disabled = false,
  });

  final String startDate;
  final String startDateTitle;
  final void Function(DateTime)? startDateOnChanged;
  final String endDate;
  final String endDateTitle;
  final void Function(DateTime)? endDateOnChanged;
  final bool disabled;

  factory DateRangeListTile.disabled({
    required String startDateTitle,
    required String startDate,
    required String endDateTitle,
    required String endDate,
  }) {
    return DateRangeListTile(
      startDate: startDate,
      startDateTitle: startDateTitle,
      endDate: endDate,
      endDateTitle: endDateTitle,
      disabled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.s5),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      startDateTitle,
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    Button(
                      title: startDate,
                      size: ButtonSize.extraSmall,
                      background: context.color.neutralLight100,
                      foreground: context.color.textLight600,
                      expand: true,
                      onPressed: disabled
                          ? null
                          : () async {
                              final startDateSelected = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now(),
                              );

                              if (startDateSelected != null && startDateOnChanged != null) {
                                disabled ? null : startDateOnChanged?.call(DateTime.now());
                              }
                            },
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontal.s5,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      endDateTitle,
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    Button(
                      title: endDate,
                      size: ButtonSize.extraSmall,
                      background: context.color.neutralLight100,
                      foreground: context.color.textLight600,
                      expand: true,
                      onPressed: disabled
                          ? null
                          : () async {
                              final endDateSelected = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now(),
                              );

                              if (endDateSelected != null && endDateOnChanged != null) {
                                disabled ? null : endDateOnChanged?.call(DateTime.now());
                              }
                            },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
