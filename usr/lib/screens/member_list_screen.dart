import 'package:flutter/material.dart';
import 'dart:math';
import 'package:couldai_user_app/models/kpop_group.dart';
import 'package:couldai_user_app/models/member.dart';
import 'package:couldai_user_app/screens/photocard_screen.dart';

class MemberListScreen extends StatelessWidget {
  final KpopGroup group;

  const MemberListScreen({Key? key, required this.group}) : super(key: key);

  void _showRandomPhotocard(BuildContext context) {
    final randomMember = group.members[Random().nextInt(group.members.length)];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotocardScreen(member: randomMember),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(group.name),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: group.members.length,
        itemBuilder: (context, index) {
          final member = group.members[index];
          return GestureDetector(
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotocardScreen(member: member),
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      member.photocardUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(member.name),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showRandomPhotocard(context),
        label: const Text('Random Photocard'),
        icon: const Icon(Icons.shuffle),
      ),
    );
  }
}
