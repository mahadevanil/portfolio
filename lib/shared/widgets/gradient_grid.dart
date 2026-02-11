import 'package:flutter/material.dart';

class CustomGridHoverEffect extends StatefulWidget {
  final double gridSize;
  final double hoverRadius;
  final Color gridColor;
  final Color hoverColor;

  const CustomGridHoverEffect({
    super.key,
    this.gridSize = 50.0,
    this.hoverRadius = 80.0,
    this.gridColor = Colors.grey,
    this.hoverColor = Colors.white,
  });

  @override
  CustomGridHoverEffectState createState() => CustomGridHoverEffectState();
}

class CustomGridHoverEffectState extends State<CustomGridHoverEffect> {
  Offset? hoverPosition;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          hoverPosition = event.localPosition;
        });
      },
      onExit: (event) {
        setState(() {
          hoverPosition = null;
        });
      },
      child: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: GridPainter(
          hoverPosition: hoverPosition,
          gridSize: widget.gridSize,
          hoverRadius: widget.hoverRadius,
          gridColor: widget.gridColor,
          hoverColor: widget.hoverColor,
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  final Offset? hoverPosition;
  final double gridSize;
  final double hoverRadius;
  final Color gridColor;
  final Color hoverColor;

  GridPainter({
    required this.hoverPosition,
    required this.gridSize,
    required this.hoverRadius,
    required this.gridColor,
    required this.hoverColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint gridPaint = Paint()
      ..color = gridColor.withValues(alpha: 0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;

    for (double x = 0; x < size.width; x += gridSize) {
      for (double y = 0; y < size.height; y += gridSize) {
        Offset cellCenter = Offset(x + gridSize / 2, y + gridSize / 2);
        double distance = hoverPosition != null
            ? (cellCenter - hoverPosition!).distance
            : double.infinity;

        double opacity = (1 - (distance / hoverRadius)).clamp(0, 1);
        Paint hoverPaint = Paint()
          ..color = hoverColor.withValues(alpha: opacity)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2;

        canvas.drawRect(
          Rect.fromLTWH(x, y, gridSize, gridSize),
          opacity > 0 ? hoverPaint : gridPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
