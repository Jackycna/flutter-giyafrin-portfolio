import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransformScaleWidget extends HookWidget {
  final Widget child;
  const TransformScaleWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = useState<double>(1);
    return MouseRegion(
      onEnter: (event) {
        size.value = 1.1;
      },
      onExit: (event) {
        size.value = 1;
      },

      child: AnimatedScale(
        scale: size.value,
        duration: Duration(milliseconds: 300),
        child: child,
      ),
    );
  }
}
