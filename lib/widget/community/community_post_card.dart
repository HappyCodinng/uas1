import 'package:flutter/material.dart';

class CommunityPostCard extends StatelessWidget {
  final String name;
  final String time;
  final String category;
  final String title;
  final String content;
  final int like;
  final int comment;

  const CommunityPostCard({
    super.key,
    required this.name,
    required this.time,
    required this.category,
    required this.title,
    required this.content,
    required this.like,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// USER
          Row(
            children: [
              const CircleAvatar(radius: 18),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                time,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),

          const SizedBox(height: 8),

          /// CATEGORY
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              category,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            content,
            style: const TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 10),

          /// ACTION
          Row(
            children: [
              const Icon(Icons.favorite_border, size: 18),
              const SizedBox(width: 4),
              Text(like.toString()),
              const SizedBox(width: 16),
              const Icon(Icons.comment_outlined, size: 18),
              const SizedBox(width: 4),
              Text(comment.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
