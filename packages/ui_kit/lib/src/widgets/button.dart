import 'package:flutter/material.dart';
import 'package:ui_kit/src/widgets/loader.dart';
import 'package:ui_kit/ui_kit.dart';

enum ButtonType {
  filled,
  outlined,
  text,
}

enum ButtonSize {
  large(64),
  medium(56),
  small(48),
  extraSmall(32);

  const ButtonSize(this.height);

  final double height;
}

class Button extends StatefulWidget {
  const Button({
    this.title,
    this.icon,
    this.onPressed,
    this.type = ButtonType.filled,
    this.size = ButtonSize.large,
    this.isLoading = false,
    this.expand = false,
    this.background,
    this.foreground,
    this.outlineColor,
    super.key,
  });

  final String? title;
  final String? icon;
  final Future<void> Function()? onPressed;
  final ButtonType type;
  final ButtonSize size;
  final bool expand;
  final Color? background;
  final Color? foreground;
  final Color? outlineColor;

  /// If set to true, allows dev to override isLoading state.
  final bool isLoading;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    assert(
      widget.title != null || widget.icon != null,
      'Button must have a title or an icon',
    );

    /// Show loader when dev pass isLoading to true OR there is operation processing on button tap.
    final showLoader = widget.isLoading || _isLoading;

    final isDisabled = widget.onPressed == null;
    final onPressedFunc = isDisabled
        ? null
        : () async {
            if (!_isLoading) {
              try {
                setState(() => _isLoading = true);
                await widget.onPressed?.call();
              } finally {
                if (mounted) {
                  setState(() => _isLoading = false);
                }
              }
            }
          };

    final padding = widget.title != null
        ? switch (widget.size) {
            ButtonSize.large => const EdgeInsets.symmetric(horizontal: 32),
            ButtonSize.medium ||
            ButtonSize.small =>
              const EdgeInsets.symmetric(horizontal: 24),
            ButtonSize.extraSmall => const EdgeInsets.symmetric(horizontal: 16),
          }
        : widget.icon != null
            ? switch (widget.size) {
                ButtonSize.large => const EdgeInsets.all(20),
                ButtonSize.medium => const EdgeInsets.all(16),
                ButtonSize.small => const EdgeInsets.all(12),
                ButtonSize.extraSmall => const EdgeInsets.all(8),
              }
            : EdgeInsets.zero;
    final height = widget.size.height;
    final width = widget.expand
        ? double.infinity
        : widget.icon != null
            ? height
            : null;
    final childOrLoadingWidget = showLoader
        ? ColorFiltered(
            colorFilter: ColorFilter.mode(
              widget.type == ButtonType.filled
                  ? context.color.textLight0
                  : context.color.textLight900,
              BlendMode.srcIn,
            ),
            child: const Loader(),
          )
        : widget.title != null && widget.icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconSvg(
                    widget.icon!,
                    color: widget.foreground ??
                        (widget.type == ButtonType.filled
                            ? context.color.textLight0
                            : context.color.textLight900
                                .withOpacity(isDisabled ? .32 : 1)),
                    size: switch (widget.size) {
                      ButtonSize.large ||
                      ButtonSize.medium ||
                      ButtonSize.small =>
                        24,
                      ButtonSize.extraSmall => 16,
                    },
                  ),
                  AppSpacing.horizontal.s3,
                  Text(
                    widget.title!,
                    maxLines: 1,
                    style: switch (widget.size) {
                      ButtonSize.large => context.textStyle.buttonLarge,
                      ButtonSize.medium => context.textStyle.buttonMedium,
                      ButtonSize.small => context.textStyle.buttonSmall,
                      ButtonSize.extraSmall =>
                        context.textStyle.buttonExtraSmall,
                    },
                  ),
                ],
              )
            : widget.title != null
                ? Text(
                    widget.title!,
                    maxLines: 1,
                    style: switch (widget.size) {
                      ButtonSize.large => context.textStyle.buttonLarge,
                      ButtonSize.medium => context.textStyle.buttonMedium,
                      ButtonSize.small => context.textStyle.buttonSmall,
                      ButtonSize.extraSmall =>
                        context.textStyle.buttonExtraSmall,
                    },
                  )
                : widget.icon != null
                    ? IconSvg(
                        widget.icon!,
                        color: widget.foreground ??
                            (widget.type == ButtonType.filled
                                ? context.color.textLight0
                                : context.color.textLight900
                                    .withOpacity(isDisabled ? .32 : 1)),
                        size: switch (widget.size) {
                          ButtonSize.large ||
                          ButtonSize.medium ||
                          ButtonSize.small =>
                            24,
                          ButtonSize.extraSmall => 16,
                        },
                      )
                    : Container();
    return SizedBox(
      height: height,
      width: width,
      child: _CustomButton(
        type: widget.type,
        size: widget.size,
        onPressed: onPressedFunc,
        padding: padding,
        background: widget.background,
        foreground: widget.foreground,
        outlineColor: widget.outlineColor,
        child: childOrLoadingWidget,
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    required this.type,
    required this.size,
    required this.padding,
    required this.background,
    required this.foreground,
    required this.child,
    this.outlineColor,
    this.onPressed,
  });

  final ButtonType type;
  final ButtonSize size;
  final EdgeInsets padding;
  final Color? background;
  final Color? foreground;
  final Color? outlineColor;
  final Future<void> Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final radius = switch (size) {
      ButtonSize.large ||
      ButtonSize.medium ||
      ButtonSize.small =>
        context.radius.hard,
      ButtonSize.extraSmall => context.radius.soft,
    };

    switch (type) {
      case ButtonType.filled:
        return FilledButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(padding),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) =>
                  background ??
                  context.color.primaryLight600.withOpacity(
                    states.contains(MaterialState.disabled) ? .32 : 1,
                  ),
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) =>
                  foreground ??
                  context.color.textLight0.withOpacity(
                    states.contains(MaterialState.disabled) ? .54 : 1,
                  ),
            ),
          ),
          child: child,
        );
      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(padding),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
            side: MaterialStateProperty.resolveWith<BorderSide?>(
              (states) => BorderSide(
                color: outlineColor ??
                    context.color.strokeLigth100.withOpacity(
                      states.contains(MaterialState.disabled) ? 0 : 1,
                    ),
              ),
            ),
            backgroundColor:
                MaterialStatePropertyAll(context.color.neutralLight0),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) => context.color.textLight900.withOpacity(
                states.contains(MaterialState.disabled) ? .32 : 1,
              ),
            ),
          ),
          child: child,
        );
      case ButtonType.text:
        return TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(padding),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) => context.color.textLight900.withOpacity(
                states.contains(MaterialState.disabled) ? .32 : 1,
              ),
            ),
          ),
          child: child,
        );
    }
  }
}
