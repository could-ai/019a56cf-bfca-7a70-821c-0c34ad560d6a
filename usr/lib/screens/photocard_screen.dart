import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/member.dart';

class PhotocardScreen extends StatelessWidget {
  final Member member;

  const PhotocardScreen({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(member.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(member.photocardUrl),
            const SizedBox(height: 16),
            Text(
              member.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
