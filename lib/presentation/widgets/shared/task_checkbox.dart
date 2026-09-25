import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class TaskCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final double size;

  const TaskCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.size = 22,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onChanged == null ? null : () => onChanged!(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? AppColors.accent : Colors.transparent,
          border: Border.all(
            color: value ? AppColors.accent : AppColors.textTertiary,
            width: 1,
          ),
        ),
        child: value
            ? CustomPaint(painter: _CheckPainter(color: AppColors.onAccent))
            : null,
      ),
    );
  }
}

class _CheckPainter extends CustomPainter {
  final Color color;

  const _CheckPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.075
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    final path = Path()
      ..moveTo(size.width * 0.31, size.height * 0.52)
      ..lineTo(size.width * 0.45, size.height * 0.65)
      ..lineTo(size.width * 0.70, size.height * 0.39);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_CheckPainter oldDelegate) => oldDelegate.color != color;
}
