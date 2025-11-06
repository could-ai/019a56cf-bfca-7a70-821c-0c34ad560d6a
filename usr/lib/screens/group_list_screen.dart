import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/kpop_group.dart';
import 'package:couldai_user_app/services/kpop_data_service.dart';
import 'package:couldai_user_app/screens/member_list_screen.dart';

class GroupListScreen extends StatelessWidget {
  final List<KpopGroup> groups = KpopDataService.getGroups();

  GroupListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('K-Pop Groups'),
      ),
      body: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          final group = groups[index];
          return ListTile(
            title: Text(group.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemberListScreen(group: group),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
