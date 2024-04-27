import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DropownValueModel<T> {
  const DropownValueModel({
    required this.name,
    required this.value,
  });

  final String name;
  final T value;
}

enum DropdownSize {
  medium(56),
  small(48);

  const DropdownSize(this.height);

  final double height;
}

class CustomDropdown<T> extends StatefulWidget {
  const CustomDropdown({
    required this.dropDownList,
    this.isExpanded = true,
    this.controller,
    this.initialValue,
    this.size = DropdownSize.medium,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.dropDownItemCount = 6,
    this.child,
    this.dropdownWidth,
    this.dropdownOffset,
    this.onChanged,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    super.key,
  });

  final FloatingLabelBehavior floatingLabelBehavior;
  final TextEditingController? controller;
  final bool isExpanded;

  final Widget? child;

  /// initial value ,if it is null or not exist in dropDownList then it will not display value.
  final T? initialValue;

  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final FormFieldValidator<T>? validator;
  final DropdownSize size;
  final double? dropdownWidth;
  final Offset? dropdownOffset;

  /// Maximum number of dropdown item to display,default value is 6
  final int dropDownItemCount;

  /// dropDownList,List of dropdown values
  /// List<DropDownValueModel>
  final List<DropownValueModel<T>> dropDownList;

  /// function,called when value selected from dropdown.
  /// for single Selection Dropdown it will return single DropDownValueModel object,
  /// and for multi Selection Dropdown ,it will return list of DropDownValueModel object,
  final dynamic Function(T)? onChanged;

  @override
  State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  late TextEditingController controller;

  bool isOpen = false;

  @override
  void initState() {
    super.initState();

    controller = widget.controller ?? TextEditingController();

    if (widget.initialValue != null) {
      controller.text = widget.dropDownList
              .firstWhereOrNull(
                (element) => element.value == widget.initialValue,
              )
              ?.name ??
          '';
    }
  }

  @override
  Future<void> dispose() async {
    if (widget.controller == null) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
        color: context.color.backgroundLight0,
      ),
      child: DropdownButtonFormField2<T>(
        isExpanded: widget.isExpanded,
        customButton: widget.child ??
            AbsorbPointer(
              child: TextInput(
                controller: controller,
                prefixIcon: widget.prefixIcon,
                floatingLabelBehavior: widget.floatingLabelBehavior,
                labelText: widget.labelText,
                contentPadding: const EdgeInsets.only(left: 16),
                enabledBorder: InputBorder.none,
                suffixIcon: Align(
                  widthFactor: 1,
                  child: IconSvg(
                    isOpen ? IconAssets.chevronUp : IconAssets.chevronDown,
                    color: context.color.iconLight600,
                    size: 16,
                  ),
                ),
              ),
            ),
        barrierColor: context.color.backgroundDark900.withOpacity(.15),
        buttonStyleData: ButtonStyleData(
          padding: EdgeInsets.zero,
          elevation: 0,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 8),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(context.radius.soft),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: context.color.backgroundLight0,
          enabled: false,
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.zero,
        ),
        dropdownStyleData: DropdownStyleData(
          width: widget.dropdownWidth,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.radius.soft),
            color: context.color.backgroundLight0,
            border: Border.all(color: context.color.strokeLigth100),
          ),
          elevation: 0,
          offset: widget.dropdownOffset ?? const Offset(0, -8),
        ),
        items: List.generate(
          widget.dropDownList.length,
          (index) => DropdownMenuItem<T>(
            value: widget.dropDownList[index].value,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        Text(
                          widget.dropDownList[index].name,
                          style: context.textStyle.bodySmallRegular,
                        ),
                      ],
                    ),
                  ),
                ),
                if (index != widget.dropDownList.length - 1)
                  const CustomDivider(),
              ],
            ),
          ),
        ),
        validator: widget.validator,
        onChanged: (value) {
          if (value == null) {
            return;
          }
          controller.text = widget.dropDownList
              .firstWhere(
                (element) => element.value == value,
              )
              .name;
          widget.onChanged?.call(value);
        },
        onMenuStateChange: (isOpen) {
          setState(() {
            this.isOpen = isOpen;
          });
        },
      ),
    );
  }
}
