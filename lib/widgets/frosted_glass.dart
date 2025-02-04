import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({super.key, required this.child, this.height, this.width, this.borderRadius =12});

  final Widget child;
  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius!),
        child: SizedBox(
          width: width ?? 200,
          height: height ?? 200,
          child: Stack(
            children: [
              // blur effect
              BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                child: Container(),
              ),

              // gradient effect
              Container(
                // padding: const EdgeInsets.all(20.0),
                // margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(borderRadius!),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.04),
                      Colors.black.withOpacity(0.01),
                    ],
                  ),
                ),
              ),
              // child
              Center(child: child)
            ],
          ),
        ),
      ),
    );
  }
}
