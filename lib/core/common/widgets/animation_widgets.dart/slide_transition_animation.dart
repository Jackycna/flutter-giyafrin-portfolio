import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SlideTransitionAnimation extends HookWidget {
  final Widget child;
  final Key uniqueKey;
  const SlideTransitionAnimation({
    super.key,
    required this.child,
    required this.uniqueKey,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: Duration(milliseconds: 500),
    );
    final slideAnimation = useMemoized(
      () =>
          Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
            CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
          ),
      [controller],
    );
    final opacityAnimation = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(controller),
      [controller],
    );

    return VisibilityDetector(
      key: uniqueKey,
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0.2) {
          controller.forward();
        }
      },
      child: FadeTransition(
        opacity: opacityAnimation,
        child: SlideTransition(position: slideAnimation, child: child),
      ),
    );
  }
}
