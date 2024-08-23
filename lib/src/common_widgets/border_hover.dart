import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
  final String imageUrl;

  const HoverCard({super.key, required this.imageUrl});

  @override
  HoverCardState createState() => HoverCardState();
}

class HoverCardState extends State<HoverCard>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        _controller.forward();
      },
      onExit: (_) {
        _controller.reverse();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: _isHovered ? _animation.value * 3 : 0,
            ),
            bottom: BorderSide(
              width: _isHovered ? _animation.value * 3 : 0,
            ),
            left: BorderSide(
              width: _isHovered ? _animation.value * 3 : 0,
            ),
            right: BorderSide(
              width: _isHovered ? _animation.value * 3 : 0,
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: BorderPainter(animation: _animation, context),
              ),
            ),
            ClipRRect(
              child: Image.network(
                alignment: Alignment.center,
                widget.imageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  final Animation<double> animation;
  final BuildContext context;
  BorderPainter(this.context, {required this.animation})
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Theme.of(context).colorScheme.primary
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();

    double topProgress = size.width * animation.value;
    path.moveTo(size.width / 2 - topProgress / 2, 0);
    path.lineTo(size.width / 2 + topProgress / 2, 0);

    double bottomProgress = size.width * animation.value;
    path.moveTo(size.width / 2 - bottomProgress / 2, size.height);
    path.lineTo(size.width / 2 + bottomProgress / 2, size.height);

    double leftProgress = size.height * animation.value;
    path.moveTo(0, size.height / 2 - leftProgress / 2);
    path.lineTo(0, size.height / 2 + leftProgress / 2);

    double rightProgress = size.height * animation.value;
    path.moveTo(size.width, size.height / 2 - rightProgress / 2);
    path.lineTo(size.width, size.height / 2 + rightProgress / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => true;
}
