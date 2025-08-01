import 'package:flutter/material.dart';
import 'package:agents/components/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final String? svgIcon;
  final String? svgIconSuffix;
  final double svgIconSuffixSpace;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double paddingVertical;
  final double radius;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.svgIconSuffixSpace = 20,
    this.icon,
    this.svgIcon,
    this.svgIconSuffix,
    this.color = AppColors.primary,
    this.textColor = Colors.white,
    this.width,
    this.paddingVertical = 15.0,
    this.radius = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    double buttonWidth = width ?? (MediaQuery.of(context).size.width * 0.8);
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding:
          EdgeInsets.symmetric(horizontal: 16, vertical: paddingVertical),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgIconSuffix != null) ...[
              SvgPicture.asset(
                svgIconSuffix!,
                height: 20.0,
              ),
              SizedBox(width: svgIconSuffixSpace),
            ],
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w500,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 20),
              Icon(icon, color: textColor),
            ],
            if (svgIcon != null) ...[
              const SizedBox(width: 20),
              SvgPicture.asset(
                svgIcon!,
              ),
            ],
          ],
        ),
      ),
    );
  }
}