import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
    this.size,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          width: size,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
