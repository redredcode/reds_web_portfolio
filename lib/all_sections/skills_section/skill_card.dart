import 'package:flutter/material.dart';
import 'package:reds_web_portfolio/widgets/gradient_border_painter.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({
    super.key,
    required this.title,
    required this.skills,
  });

  final String title;
  final Map<String, bool> skills;

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_)=> _onHover(true),
      onExit: (_)=> _onHover(false),
      child: CustomPaint(
        painter: GradientBorderPainter(),
        child: AnimatedContainer(
          width: 300,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
              boxShadow: _isHovered
                  ? [
                      const BoxShadow(
                        color: Color(0x66ff0000),
                        offset: Offset(0, 5),
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                      const BoxShadow(
                        color: Color(0x4cff0000),
                        offset: Offset(0, 10),
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                      const BoxShadow(
                        color: Color(0x33ff0000),
                        offset: Offset(0, 15),
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                      const BoxShadow(
                        color: Color(0x19ff0000),
                        offset: Offset(0, 20),
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                      const BoxShadow(
                        color: Color(0x0cff0000),
                        offset: Offset(0, 25),
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                    ]
                  : []),
          duration: const Duration(microseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ...widget.skills.entries.map(
                (entry) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      entry.value
                          ? const Tooltip(
                              message: 'Experienced',
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.lightGreenAccent,
                              ),
                            )
                          : const Tooltip(
                              message: 'Learning',
                              child: Icon(
                                Icons.downloading_outlined,
                                color: Colors.amber,
                              ),
                            ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          entry.key,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}


