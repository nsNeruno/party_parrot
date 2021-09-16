import 'dart:math';

import 'package:flutter/widgets.dart';

import 'frame.dart';
import 'painter.dart';

///
/// Default Square Dimension Size of the Parrot Box Container
///
const _VIEW_BOX_DIMENSION = 128.0;
///
/// All Frames Playback Duration
///
const _ANIM_DURATION_MILLIS = 500;

class PartyParrot extends StatefulWidget {
  final double size;

  const PartyParrot({
    Key? key,
    this.size = _VIEW_BOX_DIMENSION,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PartyParrotState();
}

class _PartyParrotState extends State<PartyParrot>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback(
      (timeStamp) {
        _animationController.repeat();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _scale = widget.size / _VIEW_BOX_DIMENSION;
    if (_scale != null) {
      final scale = _scale!;
      _frames = <ParrotFrame>[
        ParrotFrame(
          color: Color(
            0xFFFF8D8B,
          ),
          bodyPath: Path()
            ..scaledMoveTo(
              67.1,
              109.5,
              scale,
            )
            ..scaledRelativeCubicTo(
              -9.6,
              0.0,
              -23.6,
              -8.8,
              -23.6,
              -24,
              scale,
            )
            ..scaledRelativeCubicTo(
              0.0,
              -12.1,
              17.8,
              -41.0,
              36.5,
              -40.5,
              scale,
            )
            ..scaledRelativeCubicTo(
              15.6,
              0.0,
              23.3,
              10.6,
              25.1,
              20.5,
              scale,
            )
            ..scaledRelativeCubicTo(
              1.9,
              10.7,
              3.9,
              8.2,
              3.9,
              19.5,
              scale,
            )
            ..scaledRelativeCubicTo(
              0.0,
              8.2,
              -3.8,
              17.0,
              -3.8,
              22.3,
              scale,
            )
            ..scaledRelativeCubicTo(
              0.0,
              3.9,
              1.4,
              7.4,
              2.9,
              10.5,
              scale,
            )
            ..scaledRelativeCubicTo(
              1.7,
              3.5,
              2.4,
              6.6,
              2.4,
              9.2,
              scale,
            )
            ..scaledLineTo(
              9.5,
              _VIEW_BOX_DIMENSION,
              scale,
            )
            ..scaledRelativeCubicTo(
              0.0,
              -13.7,
              10.8,
              -14.0,
              21.1,
              -23.0,
              scale,
            )
            ..scaledRelativeCubicTo(
              5.6,
              -4.9,
              11.0,
              -12.4,
              14.5,
              -26.0,
              scale,
            ),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              78.29,
              70.0,
            ),
            controlY: 85.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 83.75,
            y: 62.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFED689,
          ),
          bodyPath: Path()
            ..scaledMoveTo(
              56.1,
              107.5,
              scale,
            )
            ..scaledRelativeCubicTo(
                -9.6, 0.0, -24.6, -13.8, -24.6, -29.0, scale)
            ..scaledRelativeCubicTo(0.0, -16.2, 13.0, -42.0, 33.5, -42.0, scale)
            ..scaledRelativeCubicTo(17.8, 0.0, 22.3, 11.6, 26.1, 22.5, scale)
            ..scaledRelativeCubicTo(3.6, 10.3, 9.9, 9.2, 9.9, 20.5, scale)
            ..scaledRelativeCubicTo(0.0, 8.2, -1.8, 7.0, -1.8, 12.3, scale)
            ..scaledRelativeCubicTo(0.0, 4.5, 3.4, 8.2, 6.4, 14.1, scale)
            ..scaledRelativeCubicTo(2.5, 4.8, 4.8, 11.2, 4.8, 20.6, scale)
            ..scaledRelativeLineTo(-99.0, 0.0, scale)
            ..scaledRelativeCubicTo(0.0, -12.1, 7.2, -17.6, 14.7, -24.3, scale)
            ..scaledRelativeCubicTo(3.2, -2.9, 6.5, -5.9, 9.2, -9.8, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              62.29,
              64.0,
            ),
            controlY: 79.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 67.75,
            y: 56.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFF88FF89,
          ),
          bodyPath: Path()
            ..scaledMoveTo(45.1, 109.5, scale)
            ..scaledRelativeCubicTo(
                -5.5, -0.2, -27.6, -8.4, -27.6, -27.0, scale)
            ..scaledRelativeCubicTo(0.0, -17.9, 14.8, -42.0, 32.5, -42.0, scale)
            ..scaledRelativeCubicTo(15.4, 0.0, 24.0, 10.4, 26.1, 21.5, scale)
            ..scaledRelativeCubicTo(1.3, 6.7, 9.9, 9.8, 9.9, 21.5, scale)
            ..scaledRelativeCubicTo(0.0, 8.2, -0.8, 6.0, -0.8, 11.3, scale)
            ..scaledRelativeCubicTo(0.0, 7.7, 12.8, 9.0, 20.8, 15.0, scale)
            ..scaledRelativeCubicTo(7.7, 5.8, 15.5, 16.7, 15.5, 16.7, scale)
            ..scaledRelativeLineTo(-110.0, 0.0, scale)
            ..scaledRelativeCubicTo(0.0, -4.8, 1.7, -11.3, 5.0, -16.0, scale)
            ..scaledRelativeCubicTo(3.2, -4.5, 4.5, -8.3, 5.0, -15.0, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              48.29,
              67.0,
            ),
            controlY: 82.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 53.75,
            y: 59.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFF87FFFF,
          ),
          bodyPath: Path()
            ..scaledMoveTo(36.0, 120.0, scale)
            ..scaledRelativeCubicTo(
                -5.5, -0.2, -28.5, -11.9, -28.5, -30.5, scale)
            ..scaledRelativeCubicTo(0.0, -16.2, 12.5, -42.0, 33.0, -42.0, scale)
            ..scaledRelativeCubicTo(17.8, 0.0, 21.8, 9.6, 25.6, 20.5, scale)
            ..scaledCubicTo(69.7, 78.3, 76.0, 78.2, 76.0, 89.5, scale)
            ..scaledRelativeCubicTo(0.0, 8.2, -0.8, 4.0, -0.8, 9.3, scale)
            ..scaledRelativeCubicTo(0.0, 5.9, 16.5, 7.8, 28.4, 15.9, scale)
            ..scaledRelativeCubicTo(8.0, 5.5, 17.9, 11.8, 17.9, 11.8, scale)
            ..scaledRelativeLineTo(-110.0, 0.0, scale)
            ..scaledRelativeCubicTo(0.0, -2.1, -1.2, -5.2, -1.9, -14.5, scale)
            ..scaledRelativeCubicTo(-0.3, -3.6, -0.5, -8.1, -0.5, -13.9, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              36.29,
              73.0,
            ),
            controlY: 88.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 41.75,
            y: 65.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFF8BB5FE,
          ),
          bodyPath: Path()
            ..scaledMoveTo(37.0, 119.5, scale)
            ..scaledRelativeCubicTo(
                -15.0, -0.1, -33.5, -12.7, -33.5, -30.0, scale)
            ..scaledCubicTo(3.5, 73.3, 16.0, 47.0, 36.5, 47.0, scale)
            ..scaledRelativeCubicTo(17.8, 0.0, 22.8, 11.0, 26.0, 22.0, scale)
            ..scaledCubicTo(65.6, 79.4, 73.0, 79.2, 73.0, 90.5, scale)
            ..scaledRelativeCubicTo(0.0, 4.0, -1.8, 6.6, -1.8, 8.3, scale)
            ..scaledRelativeCubicTo(0.0, 5.9, 14.2, 6.4, 26.4, 15.9, scale)
            ..scaledRelativeCubicTo(7.7, 6.0, 13.9, 11.8, 13.9, 11.8, scale)
            ..scaledLineTo(7.5, _VIEW_BOX_DIMENSION, scale)
            ..scaledRelativeCubicTo(-1.2, -3.4, -1.8, -7.3, -1.9, -11.2, scale)
            ..scaledRelativeCubicTo(-0.2, -5.1, 0.3, 10.1, 0.9, -13.7, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              35.29,
              75.0,
            ),
            controlY: 90.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 40.75,
            y: 67.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFD78CFF,
          ),
          bodyPath: Path()
            ..scaledMoveTo(40.5, 121.5, scale)
            ..scaledRelativeCubicTo(
                -12.6, 0.0, -30.0, -13.4, -30.0, -29.0, scale)
            ..scaledCubicTo(10.5, 76.3, 23.0, 53.0, 43.5, 53.0, scale)
            ..scaledRelativeCubicTo(14.5, 0.0, 22.8, 9.6, 25.0, 22.0, scale)
            ..scaledRelativeCubicTo(1.2, 6.9, 10.0, 9.2, 10.0, 20.5, scale)
            ..scaledRelativeCubicTo(0.0, 4.0, 0.0, 5.6, 0.0, 7.3, scale)
            ..scaledRelativeCubicTo(0.0, 4.9, 6.1, 7.5, 11.2, 11.9, scale)
            ..scaledRelativeCubicTo(5.8, 5.0, 7.2, 11.8, 7.2, 11.8, scale)
            ..scaledLineTo(8.5, _VIEW_BOX_DIMENSION, scale)
            ..scaledRelativeCubicTo(0.0, -1.5, -0.6, -6.1, 0.4, -11.8, scale)
            ..scaledRelativeCubicTo(0.6, -3.5, 1.9, -7.5, 4.3, -11.6, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              41.29,
              81.0,
            ),
            controlY: 96.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 46.75,
            y: 73.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFF8CFF,
          ),
          bodyPath: Path()
            ..scaledMoveTo(48.5, 121.5, scale)
            ..scaledRelativeCubicTo(
                -12.6, 0.0, -25.0, -6.3, -25.0, -18.0, scale)
            ..scaledRelativeCubicTo(0.0, -16.2, 13.7, -47.0, 36.0, -47.0, scale)
            ..scaledRelativeCubicTo(15.6, 0.0, 24.8, 9.1, 27.0, 21.5, scale)
            ..scaledRelativeCubicTo(1.2, 6.9, 7.0, 9.2, 7.0, 18.5, scale)
            ..scaledRelativeCubicTo(0.0, 9.5, -4.0, 11.0, -4.0, 22.0, scale)
            ..scaledRelativeCubicTo(0.0, 4.1, 0.5, 5.0, 1.0, 6.0, scale)
            ..scaledRelativeCubicTo(0.5, 1.2, 1.0, 2.0, 1.0, 2.0, scale)
            ..scaledRelativeLineTo(-81.0, 0.0, scale)
            ..scaledRelativeCubicTo(0.0, -5.3, 3.1, -8.3, 6.3, -11.5, scale)
            ..scaledRelativeCubicTo(2.6, -2.6, 5.4, -5.3, 6.7, -9.5, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              59.29,
              84.0,
            ),
            controlY: 99.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 64.75,
            y: 76.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFF68F7,
          ),
          bodyPath: Path()
            ..scaledMoveTo(68.5, 121.5, scale)
            ..scaledRelativeCubicTo(
                -12.6, 0.0, -33.0, -5.8, -33.0, -23.0, scale)
            ..scaledRelativeCubicTo(0.0, -9.2, 11.8, -36.0, 37.0, -36.0, scale)
            ..scaledRelativeCubicTo(15.6, 0.0, 25.8, 8.1, 28.0, 20.5, scale)
            ..scaledRelativeCubicTo(1.2, 6.9, 4.0, 6.2, 4.0, 15.5, scale)
            ..scaledRelativeCubicTo(0.0, 9.5, -5.0, 15.1, -5.0, 21.0, scale)
            ..scaledRelativeCubicTo(0.0, 1.9, 1.0, 2.3, 1.0, 5.0, scale)
            ..scaledRelativeCubicTo(0.0, 1.2, 0.0, 2.0, 0.0, 2.0, scale)
            ..scaledRelativeLineTo(-91.0, 0.0, scale)
            ..scaledRelativeCubicTo(0.5, -7.6, 7.1, -11.1, 13.7, -15.7, scale)
            ..scaledRelativeCubicTo(4.9, -3.4, 9.9, -7.5, 12.3, -14.3, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              72.29,
              89.0,
            ),
            controlY: 104.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 77.75,
            y: 81.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFE6CB7,
          ),
          bodyPath: Path()
            ..scaledMoveTo(73.5, 117.5, scale)
            ..scaledRelativeCubicTo(
                -12.6, 0.0, -30.0, -6.2, -30.0, -25.0, scale)
            ..scaledRelativeCubicTo(0.0, -14.2, 20.9, -37.0, 38.0, -37.0, scale)
            ..scaledRelativeCubicTo(17.6, 0.0, 25.8, 11.1, 28.0, 23.5, scale)
            ..scaledRelativeCubicTo(1.2, 6.9, 3.0, 7.2, 3.0, 16.5, scale)
            ..scaledRelativeCubicTo(0.0, 12.1, -6.0, 16.1, -6.0, 22.0, scale)
            ..scaledRelativeCubicTo(0.0, 4.2, 2.0, 5.3, 2.0, 8.0, scale)
            ..scaledRelativeCubicTo(0.0, 1.2, 0.0, 1.0, 0.0, 1.0, scale)
            ..scaledLineTo(7.5, _VIEW_BOX_DIMENSION, scale)
            ..scaledRelativeCubicTo(2.1, -9.4, 10.4, -13.3, 19.2, -19.4, scale)
            ..scaledRelativeCubicTo(7.1, -5.0, 14.4, -11.5, 18.8, -23.6, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              80.29,
              82.0,
            ),
            controlY: 97.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 85.75,
            y: 74.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFF6968,
          ),
          bodyPath: Path()
            ..scaledMoveTo(80.5, 115.5, scale)
            ..scaledRelativeCubicTo(
                -12.6, 0.0, -32.0, -9.2, -32.0, -28.0, scale)
            ..scaledRelativeCubicTo(0.0, -14.2, 22.9, -35.0, 40.0, -35.0, scale)
            ..scaledRelativeCubicTo(17.6, 0.0, 25.8, 12.1, 28.0, 24.5, scale)
            ..scaledRelativeCubicTo(1.2, 6.9, 3.0, 6.2, 3.0, 15.5, scale)
            ..scaledRelativeCubicTo(0.0, 12.1, -6.0, 19.1, -6.0, 25.0, scale)
            ..scaledRelativeCubicTo(0.0, 4.2, 2.0, 5.3, 2.0, 8.0, scale)
            ..scaledRelativeCubicTo(0.0, 1.2, 0.0, 1.0, 0.0, 1.0, scale)
            ..scaledRelativeLineTo(-102, 0.0, scale)
            ..scaledRelativeCubicTo(2.3, -8.7, 11.6, -11.7, 20.8, -20.1, scale)
            ..scaledRelativeCubicTo(5.3, -4.8, 10.5, -11.4, 14.2, -21.9, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              87.29,
              78.0,
            ),
            controlY: 93.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 92.75,
            y: 70.0,
            scale: scale,
          ),
        ),
        ParrotFrame(
          color: Color(
            0xFFFF8D8B,
          ),
          bodyPath: Path()
            ..scaledMoveTo(67.1, 109.5, scale)
            ..scaledRelativeCubicTo(-9.6, 0.0, -23.6, -8.8, -23.6, -24.0, scale)
            ..scaledRelativeCubicTo(0.0, -12.1, 17.8, -41.0, 37.5, -41.0, scale)
            ..scaledRelativeCubicTo(15.6, 0.0, 23.3, 10.6, 25.1, 20.5, scale)
            ..scaledRelativeCubicTo(1.9, 10.7, 3.9, 8.2, 3.9, 19.5, scale)
            ..scaledRelativeCubicTo(0.0, 8.2, -3.8, 17.0, -3.8, 22.3, scale)
            ..scaledRelativeCubicTo(0.0, 3.9, 1.4, 7.4, 2.9, 10.5, scale)
            ..scaledRelativeCubicTo(1.7, 3.5, 2.4, 6.6, 2.4, 9.2, scale)
            ..scaledLineTo(9.5, _VIEW_BOX_DIMENSION, scale)
            ..scaledRelativeCubicTo(0.0, -13.7, 10.8, -14.0, 21.1, -23.0, scale)
            ..scaledRelativeCubicTo(5.6, -4.9, 11.0, -12.4, 14.5, -26.0, scale),
          beakPath: _createBeakPath(
            initialDrawPoint: Point(
              78.29,
              70.0,
            ),
            controlY: 85.5,
            scale: scale,
          ),
          glabella: Glabella(
            midX: 83.75,
            y: 62.0,
            scale: scale,
          ),
        ),
      ];
    }

    if (_frames == null) {
      return Container();
    }
    final frames = _frames!;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (
        _,
        __,
      ) {
        final frame = frames[(_animationController.value * 10).toInt()];
        return CustomPaint(
          painter: ParrotFramePainter(frame),
          child: Container(
            constraints: BoxConstraints.loose(
              Size.square(
                widget.size,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Path _createBeakPath({
    required Point<double> initialDrawPoint,
    required double controlY,
    required double scale,
  }) {
    return Path()
      ..scaledMoveTo(initialDrawPoint.x, initialDrawPoint.y, scale)
      ..scaledRelativeCubicTo(0.0, -9.92, 2.5, -14.0, 8.0, -14.0, scale)
      ..scaledRelativeQuadraticBezierTo(8.0, 2.17, 8.0, 10.67, scale)
      ..scaledRelativeCubicTo(0.0, 15.92, -7.0, 26.33, -7.0, 26.33, scale)
      ..scaledQuadraticBezierTo(initialDrawPoint.x, controlY,
          initialDrawPoint.x, initialDrawPoint.y, scale)
      ..close();
  }

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: Duration(
      milliseconds: _ANIM_DURATION_MILLIS,
    ),
  );
  double? _scale;
  List<ParrotFrame>? _frames;
}
