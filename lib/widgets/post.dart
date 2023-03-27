import 'package:facebook/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isShowLess = true;
  void _showLess() {
    setState(() {
      _isShowLess = !_isShowLess;
    });
  }

  bool _isLike = false;
  void _like() {
    setState(() {
      _isLike = !_isLike;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      /*constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height / 3,
      ),*/
      decoration: const BoxDecoration(
        color: CupertinoColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.inactiveGray,
                      width: 1,
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/profiles/${widget.user.profileImage}'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "4h",
                      style: TextStyle(
                        color: CupertinoColors.inactiveGray,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CupertinoButton(
                  child: const Icon(
                    CupertinoIcons.ellipsis,
                    color: CupertinoColors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          CupertinoButton(
            onPressed: _showLess,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.user.postDescription!,
                  maxLines: _isShowLess ? 2 : null,
                  style: const TextStyle(
                      color: CupertinoColors.black, height: 1.4),
                  overflow: _isShowLess ? TextOverflow.ellipsis : null,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Show more'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          if (widget.user.postImage != null)
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/posts/${widget.user.postImage}',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.destructiveRed,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    CupertinoIcons.heart_fill,
                    color: CupertinoColors.white,
                    size: 20,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    CupertinoIcons.hand_thumbsup_fill,
                    color: CupertinoColors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 10),
                if (_isLike)
                  FittedBox(
                    child: Text(
                      "You and ",
                      style: TextStyle(
                        color: CupertinoColors.black.withOpacity(.5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                FittedBox(
                  child: Text(
                    widget.user.likes!,
                    style: TextStyle(
                      color: CupertinoColors.black.withOpacity(.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                FittedBox(
                  child: Text(
                    '${widget.user.comments} comments',
                    style: TextStyle(
                      color: CupertinoColors.black.withOpacity(.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                FittedBox(
                  child: Text(
                    '${widget.user.shares} shares',
                    style: TextStyle(
                      color: CupertinoColors.black.withOpacity(.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: CupertinoColors.separator,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: _like,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.hand_thumbsup,
                        color: _isLike
                            ? CupertinoColors.activeBlue
                            : CupertinoColors.black.withOpacity(.6),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        "Like",
                        style: TextStyle(
                          color: _isLike
                              ? CupertinoColors.activeBlue
                              : CupertinoColors.black.withOpacity(.6),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.bubble_left,
                      color: CupertinoColors.black.withOpacity(.6),
                    ),
                    Text(
                      "Comment",
                      style: TextStyle(
                        color: CupertinoColors.black.withOpacity(.6),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.arrowshape_turn_up_right,
                      color: CupertinoColors.black.withOpacity(.6),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                        color: CupertinoColors.black.withOpacity(.6),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
