import 'package:flutter/material.dart';

class PlaceholderImage extends StatelessWidget {
  final String? imageUrl;
  final String label;
  final IconData icon;
  final double? width;
  final double height;
  final BoxShape shape;

  const PlaceholderImage({
    super.key,
    this.imageUrl,
    required this.label,
    this.icon = Icons.image_outlined,
    this.width,
    this.height = 160,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      final image = Image.network(
        imageUrl!,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _placeholder(context),
      );
      if (shape == BoxShape.circle) {
        return ClipOval(child: image);
      }
      return ClipRRect(borderRadius: BorderRadius.circular(12), child: image);
    }
    return _placeholder(context);
  }

  Widget _placeholder(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        shape: shape,
        borderRadius: shape == BoxShape.rectangle ? BorderRadius.circular(12) : null,
        border: Border.all(color: scheme.outlineVariant, width: 1.5),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 28, color: scheme.outline),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11, color: scheme.outline),
          ),
        ],
      ),
    );
  }
}
