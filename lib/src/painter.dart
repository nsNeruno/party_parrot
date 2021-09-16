import 'package:flutter/rendering.dart';

import 'frame.dart';

///
/// Paints the Parrot
///
class ParrotFramePainter extends CustomPainter {
  final ParrotFrame frame;

  ParrotFramePainter(this.frame,);

  @override
  void paint(Canvas canvas, Size size) {
    frame.draw(canvas,);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

///
/// Helper extension to apply scales for dynamic sizing while pathing
///
extension ScaledPath on Path {
  ///
  /// See [Path.moveTo]
  ///
  void scaledMoveTo(
      double x,
      double y,
      double scale,
      ) {
    moveTo(
      scale * x,
      scale * y,
    );
  }

  ///
  /// See [Path.cubicTo]
  ///
  void scaledCubicTo(double x1, double y1, double x2, double y2, double x3,
      double y3, double scale) {
    cubicTo(
      scale * x1,
      scale * y1,
      scale * x2,
      scale * y2,
      scale * x3,
      scale * y3,
    );
  }

  ///
  /// See [Path.relativeCubicTo]
  ///
  void scaledRelativeCubicTo(
      double x1,
      double y1,
      double x2,
      double y2,
      double x3,
      double y3,
      double scale,
      ) {
    relativeCubicTo(
      scale * x1,
      scale * y1,
      scale * x2,
      scale * y2,
      scale * x3,
      scale * y3,
    );
  }

  ///
  /// See [Path.lineTo]
  ///
  void scaledLineTo(
      double x,
      double y,
      double scale,
      ) {
    lineTo(
      scale * x,
      scale * y,
    );
  }

  ///
  /// See [Path.relativeLineTo]
  ///
  void scaledRelativeLineTo(double dx, double dy, double scale) {
    relativeLineTo(
      scale * dx,
      scale * dy,
    );
  }

  ///
  /// See [Path.quadraticBezierTo]
  ///
  void scaledQuadraticBezierTo(double x1, double y1, double x2, double y2, double scale,) {
    quadraticBezierTo(scale * x1, scale * y1, scale * x2, scale * y2,);
  }

  ///
  /// See [Path.relativeQuadraticBezierTo]
  ///
  void scaledRelativeQuadraticBezierTo(double x1, double y1, double x2, double y2, double scale,) {
    relativeQuadraticBezierTo(scale * x1, scale * y1, scale * x2, scale * y2,);
  }
}