import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/user_cart.dart';

class ContactList extends StatelessWidget {
  final List<User> users;

  const ContactList({
    Key key,
    @required this.users,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 280,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey[600],
                )
              ],
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final User user = users[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: UserCard(user: user),
                  );
                })
          ],
        ),
      ),
    );
  }
}
