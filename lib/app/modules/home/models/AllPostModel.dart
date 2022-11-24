// To parse this JSON data, do
//
//     final allPostModel = allPostModelFromJson(jsonString);

import 'dart:convert';

AllPostModel allPostModelFromJson(String str) => AllPostModel.fromJson(json.decode(str));

String allPostModelToJson(AllPostModel data) => json.encode(data.toJson());

class AllPostModel {
  AllPostModel({
    this.status,
    this.totalPosts,
    this.totalActivePosts,
    this.totalPendingPosts,
    required this.posts,
  });

  int? status;
  int? totalPosts;
  int? totalActivePosts;
  int? totalPendingPosts;
  List<PostModel> posts;

  factory AllPostModel.fromJson(Map<String, dynamic> json) => AllPostModel(
    status: json["status"],
    totalPosts: json["total_posts"],
    totalActivePosts: json["total_active_posts"],
    totalPendingPosts: json["total_pending_posts"],
    posts: List<PostModel>.from(json["posts"].map((x) => PostModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "total_posts": totalPosts,
    "total_active_posts": totalActivePosts,
    "total_pending_posts": totalPendingPosts,
    "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
  };
}

class PostModel {
  PostModel({
    this.id,
    this.postTitle,
    this.postType,
    this.postDescription,
    this.image,
    this.postedBy,
    this.updatedBy,
    this.date,
    this.isArchived,
    this.isPublished,
    this.tag,
    this.createdAt,
    this.updatedAt,
  });

  String? id;
  String? postTitle;
  String? postType;
  String? postDescription;
  String? image;
  String? postedBy;
  String? updatedBy;
  String? date;
  String? isArchived;
  String? isPublished;
  String? tag;
  String? createdAt;
  String? updatedAt;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    id: json["id"],
    postTitle: json["post_title"],
    postType: json["post_type"],
    postDescription: json["post_description"],
    image: json["image"],
    postedBy: json["posted_by"],
    updatedBy: json["updated_by"],
    date: json["date"],
    isArchived: json["isArchived"],
    isPublished: json["isPublished"],
    tag: json["tag"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "post_title": postTitle,
    "post_type": postType,
    "post_description": postDescription,
    "image": image,
    "posted_by": postedBy,
    "updated_by": updatedBy,
    "date": date,
    "isArchived": isArchived,
    "isPublished": isPublished,
    "tag": tag,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
