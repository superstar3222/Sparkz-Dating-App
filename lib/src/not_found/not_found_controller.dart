import 'package:dating_app/app/common/common.dart';
import 'package:flutter/material.dart';

part 'not_found_view.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => NotFoundScreenController();
}

class NotFoundScreenController extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return _NotFoundView(this);
  }
}
