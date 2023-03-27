import 'package:flutter/cupertino.dart';

import '../models/user_model.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key, required this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/profiles/${user.profileImage}"
                ),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                  color: CupertinoColors.inactiveGray,
                  width: 1
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'What\'s on your mind?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.black,
            ),
          ),
          const Spacer(),
          const Icon(
            CupertinoIcons.photo_on_rectangle,
            color: CupertinoColors.activeGreen,
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
