import 'package:flutter/material.dart';
import 'package:periodictable/etc/colors/colors.dart';

class ElementButton extends StatefulWidget {
  final String text;
  final VoidCallback? onTap;
  final Color? colorInput;
  const ElementButton(
      {super.key, required this.text, this.onTap, this.colorInput});

  @override
  State<ElementButton> createState() => _ElementButtonState();
}

class _ElementButtonState extends State<ElementButton>
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
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();

        _shrinkButtonSize();
        _restoreButtonSize();
      },
      onTapDown: (_) => _shrinkButtonSize(),
      onTapCancel: _restoreButtonSize,
      child: Container(
        width: 64,
        height: 67.2,
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
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: AppColor.textColor,
                    fontSize: 24.88,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
