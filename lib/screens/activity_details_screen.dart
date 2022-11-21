import 'package:flutter/material.dart';

import '../models/activity_model.dart';

class ActivityDetailsScreen extends StatefulWidget {
  const ActivityDetailsScreen({Key? key, required this.activity}) : super(key: key);

  final Activity activity;

  @override
  State<ActivityDetailsScreen> createState() => _ActivityDetailsScreenState();
}

class _ActivityDetailsScreenState extends State<ActivityDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
