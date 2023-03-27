class UserModel {
  String name;
  String profileImage;
  String? postImage;
  String? postDescription;
  String? storyImage;
  String? likes;
  String? comments;
  String? shares;

  UserModel({
    required this.name,
    required this.profileImage,
    this.postImage,
    this.postDescription,
    this.storyImage,
    this.likes,
    this.comments,
    this.shares,
  });
}
