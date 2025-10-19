import 'package:flutter/material.dart';

class LikeIcon extends StatelessWidget {
  final VoidCallback? toggleLike;
  final bool isLiked;
  final Color color;
  final Color selectedColor;

  const LikeIcon({super.key,this.toggleLike,this.isLiked = false,this.color=Colors.white,this.selectedColor=Colors.red});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleLike,
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? selectedColor : color,
      ),
    );
  }
}
