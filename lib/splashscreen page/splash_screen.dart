import 'package:blinking_border/blinking_border.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_shaders_ui/flutter_shaders_ui.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(
      begin: 0.9,
      end: 1.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: WaveBackground(
        color1: Colors.green.shade700,
        color2: const Color(0xFF000000),
        child: _Mainbody(),
      ),
    );
  }

  Widget _Mainbody() {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          if (width < 600) {
            return _mobileview(constraints);
          } else {
            return _tabletLayout(constraints);
          }
        },
      ),
    );
  }

  Widget _mobileview(BoxConstraints constraints) {
    final w = constraints.maxWidth;
    final h = constraints.maxHeight;
    return SingleChildScrollView(
      child: SizedBox(
        height: h,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ScaleTransition(
                      scale: _scaleAnimation,
                      child: ZoomTapAnimation(
                        onTap: () {},
                        child: Container(
                          child: Icon(
                            Icons.wallet,
                            size: w * 0.12,
                            color: Colors.black,
                          ),
                          width: w * 0.3,
                          height: h * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    _iconview(w, h),
                  ],
                ),
              ),
            ),

            _bottomwidget(w, h),
            SizedBox(height: h * 0.05),
          ],
        ),
      ),
    );
  }

  Widget _tabletLayout(BoxConstraints constraints) {
    final w = constraints.maxWidth;
    final h = constraints.maxHeight;
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ScaleTransition(
                      scale: _scaleAnimation,
                      child: ZoomTapAnimation(
                        onTap: () {},
                        child: Container(
                          child: Icon(
                            Icons.wallet,
                            size: w * 0.08,
                            color: Colors.black,
                          ),
                          width: w * 0.1,
                          height: h * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                _iconview(w, h),
              ],
            ),
          ),
        ),
        _bottomwidget(w, h),
        SizedBox(height: h * 0.05),
      ],
    );
  }
}

Widget _iconview(double w, double h) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: h * 0.01),
        Text(
          "Cash Pay",
          style: TextStyle(
            fontSize: w * 0.08,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          period: const Duration(milliseconds: 1200),
          loop: 0, // 0 = forever
          enabled: true,
          baseColor: Colors.white,
          highlightColor: Colors.grey.shade600,
          child: Text(
            "Your Complete Financial Ecosystem",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _bottomwidget(double w, double h) {
  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: w * 0.6,
          height: h * 0.1,
          child: AnimatedTextKit(
            animatedTexts: [
              for (final word in ['INITIALIZING...', 'SECURELY'])
                TyperAnimatedText(
                  word,
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 80), // typing speed per character
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ],
            pause: const Duration(milliseconds: 2500), // static, readable hold after each word finishes typing
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),
        SizedBox(height: h * 0.01),
        Loadingbar(width: w * 0.6),
      ],
    ),
  );
}

class Loadingbar extends StatefulWidget {
  const Loadingbar({super.key, required this.width});
  final double width;

  @override
  State<Loadingbar> createState() => _LoadingbarState();
}

class _LoadingbarState extends State<Loadingbar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _internalController;

  @override
  void initState() {
    super.initState();
    _internalController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _internalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _internalController,
      builder: (context, child) {
        return SizedBox(
          width: widget.width,
          child: LinearProgressIndicator(
            value: _internalController.value,
            color: Colors.green,
            backgroundColor: Colors.white,
          ),
        );
      },
    );
  }
}
