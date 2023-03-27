import 'package:facebook/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class Story extends StatelessWidget {
  const Story({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 1.2 / 2,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/stories/${user.storyImage}'
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        CupertinoColors.black.withOpacity(.5),
                        CupertinoColors.black.withOpacity(.1),
                      ],
                      begin: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.activeBlue,
                      width: 3,
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/profiles/${user.profileImage}'
                        ),
                        fit: BoxFit.cover
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  user.name,
                  style: TextStyle(
                    color: CupertinoColors.white.withOpacity(.9),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
