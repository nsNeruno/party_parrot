import 'dart:math';

import 'dart:ui';

import 'package:flutter/rendering.dart';

///
/// Coordinate Configuration for Placing the Parrot's Eyes
///
class Glabella {

  static const _DISTANCE_FACTOR = 32.5;

  Glabella({required this.midX, required this.y, required this.scale,});

  ///
  /// The center X point between the eyes
  ///
  final double midX;
  ///
  /// The center Y axis
  ///
  final double y;
  ///
  /// The scale used in drawing the eyes and for distancing
  ///
  final double scale;

  ///
  /// Gets the left eye coordinate
  ///
  Point<double> get leftEye => Point(scale * (midX - _DISTANCE_FACTOR / 2), scale * y,);
  ///
  /// Gets the right eye coordinate
  ///
  Point<double> get rightEye => Point(scale * (midX + _DISTANCE_FACTOR / 2), scale * y,);

}

///
/// Main class to configure how to draw a Parrot
///
class ParrotFrame {

  ParrotFrame({
    required this.color,
    required this.bodyPath,
    required this.beakPath,
    required this.glabella,
  });

  void _drawFilledBody(Canvas canvas, Paint paint,) {
    paint
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(bodyPath, paint,);
  }

  void _drawBodyOutline(Canvas canvas, Paint paint,) {
    paint
      ..color = Color(0xFF000000,)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(
      bodyPath,
      paint,
    );
  }

  void _drawBeak(Canvas canvas, Paint paint,) {
    paint
      ..style = PaintingStyle.fill
      ..color = Color(0xFF7B8C68,);
    canvas.drawPath(beakPath, paint,);
    paint
      ..style = PaintingStyle.stroke
      ..color = Color(0xFF000000,)
      ..strokeWidth = 3.0
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(beakPath, paint,);
  }

  void _drawOneEye(Point<double> eyeCenterPoint, double rx, double ry, Canvas canvas, Paint paint,) {
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(eyeCenterPoint.x, eyeCenterPoint.y,),
        width: rx,
        height: ry,
      ),
      paint,
    );
  }

  void _drawEyes(Canvas canvas, Paint paint,) {
    final scale = glabella.scale;
    final scaleMultiplier = 2.5;
    final rx = scaleMultiplier * scale * 3.0;
    final ry = scaleMultiplier * scale * 4.0;

    paint
      ..style = PaintingStyle.fill
      ..color = Color(0xFF000000,);
    _drawOneEye(glabella.leftEye, rx, ry, canvas, paint,);
    _drawOneEye(glabella.rightEye, rx, ry, canvas, paint,);
  }

  ///
  /// Render the [Path]s within the [Canvas] of the [CustomPainter]
  ///
  void draw(
      Canvas canvas,
      ) {
    final Paint paint = Paint();
    _drawFilledBody(canvas, paint,);
    _drawBodyOutline(canvas, paint,);
    _drawBeak(canvas, paint,);
    _drawEyes(canvas, paint,);
  }

  ///
  /// Current frame's [Color]
  ///
  final Color color;

  ///
  /// [Path] that defines the:
  /// * Color-filled area, and;
  /// * Outline of the body
  ///
  final Path bodyPath;

  ///
  /// [Path] that defines how the beak is drawn
  ///
  final Path beakPath;

  ///
  /// Configuration for the drawing and placement of the eyes
  ///
  final Glabella glabella;
}