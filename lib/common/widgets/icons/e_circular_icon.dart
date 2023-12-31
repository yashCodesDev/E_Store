import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECircularIcon extends StatelessWidget {
  ///A Custom Circular Icon Widget with a background color.
  ///
  ///Properties are:
  ///Container [width] ,[height] & [backgroundColor].
  ///
  ///Icon's [size] , [color] & [onPressed]

  const ECircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = ESizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? EColors.black.withOpacity(0.9)
                : EColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
