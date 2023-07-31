import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:periodictable/etc/colors/colors.dart';

class CloseButtonElement extends StatefulWidget {
  final VoidCallback? onTap;
  final Color? colorInput;
  const CloseButtonElement({super.key, this.onTap, this.colorInput});

  @override
  State<CloseButtonElement> createState() => _CloseButtonElementState();
}

class _CloseButtonElementState extends State<CloseButtonElement>
    with SingleTickerProviderStateMixin {
  static const clickAnimationDurationMillis = 100;
  double _scaleTransformValue = 1;
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: clickAnimationDurationMillis),
      lowerBound: 0.01,
      upperBound: 0.05,
    )..addListener(() {
        setState(() => _scaleTransformValue = 1 - animationController.value);
      });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _shrinkButtonSize() {
    animationController.forward();
  }

  void _restoreButtonSize() {
    Future.delayed(
      const Duration(milliseconds: clickAnimationDurationMillis),
      () => animationController.reverse(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 50.4,
      child: GestureDetector(
        onTap: () {
          widget.onTap?.call();

          _shrinkButtonSize();
          _restoreButtonSize();
        },
        onTapDown: (_) => _shrinkButtonSize(),
        onTapCancel: _restoreButtonSize,
        child: Transform.scale(
          scale: _scaleTransformValue,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.textColor,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.textColor,
                  width: 2,
                ),
                color: widget.colorInput ?? AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Iconsax.close_circle,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
