import 'package:flutter/material.dart';

class FFButtonOptions {
  const FFButtonOptions({
    this.width,
    this.height,
    this.color,
    this.textStyle,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.iconPadding,
  });

  final double? width;
  final double? height;
  final Color? color;
  final TextStyle? textStyle;
  final double? elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsDirectional? padding;
  final EdgeInsetsDirectional? iconPadding;
}

class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.options,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final FFButtonOptions options;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: options.color,
        elevation: options.elevation,
        padding: options.padding?.resolve(TextDirection.ltr),
        shape: RoundedRectangleBorder(
          borderRadius: options.borderRadius ?? BorderRadius.circular(8),
        ),
        minimumSize: Size(options.width ?? 0, options.height ?? 0),
      ),
      child: Text(text, style: options.textStyle),
    );
  }
}