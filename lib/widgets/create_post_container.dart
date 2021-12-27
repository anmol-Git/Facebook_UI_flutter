import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDekstop = Responsive.isDekstop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDekstop ? 5 : 0),
      elevation: isDekstop ? 1 : 0,
      shape: isDekstop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageUrl,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind?'),
                  ),
                )
              ],
            ),
            const Divider(height: 10, thickness: 0.5),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyFlatButton(
                    color: Colors.red,
                    icon: Icons.videocam,
                    text: 'Live',
                  ),
                  VerticalDivider(
                    width: 8.0,
                  ),
                  MyFlatButton(
                    color: Colors.green,
                    icon: Icons.photo_library,
                    text: 'Photo',
                  ),
                  VerticalDivider(
                    width: 8.0,
                  ),
                  MyFlatButton(
                    color: Colors.purpleAccent,
                    icon: Icons.video_call,
                    text: 'Room',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
