import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../models/AllPostModel.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.getALlJobPost();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [

      DropdownSearch<PostModel>(
      mode: Mode.MENU,
          showSearchBox: true,
          showClearButton: true,
          dropdownSearchDecoration: InputDecoration(
            hintStyle:
            const TextStyle(color: Colors.grey),
            border: InputBorder.none,
            hintText: "List",

          ),
          /* validator: (value) {
                                    return 'required';
                                  },*/
          items: controller.postList,
          itemAsString:
              (PostModel? post) =>
              post!.postTitle.toString(),
          onChanged: (value) {
            print(value!.postTitle.toString());
            print(value!.postedBy.toString());
            print(value!.id.toString());
          }),

        ],
      )
    );
  }
}
