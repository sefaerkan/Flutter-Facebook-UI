import 'package:flutter/cupertino.dart';
import '../models/user_model.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 1.2 / 2,
        child: Container(
          decoration: const BoxDecoration(
              color: CupertinoColors.systemGroupedBackground,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/profiles/${user.profileImage}'
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Create\nstory',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 125,
                left: 50,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    CupertinoIcons.add,
                    color: CupertinoColors.white,
                    size: 25,
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
