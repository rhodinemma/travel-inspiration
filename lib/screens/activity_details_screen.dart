import 'package:flutter/material.dart';

import '../models/activity_model.dart';

class ActivityDetailsScreen extends StatelessWidget {
  const ActivityDetailsScreen({Key? key, required this.activity}) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: '${activity.id}_${activity.title}',
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(activity.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }
}

