import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({super.key, required this.child, this.height, this.width});

  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
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
                decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.white.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.4),
                          Colors.white.withOpacity(0.1),
                        ])),
              ),
              // child
              Center(
                  child: child
              )
            ],
          ),
        ),
      ),
    );
  }
}
