import 'package:get/get.dart';

import '../models/AllPostModel.dart';
import '../provider/jobpost_provider.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController


  var isLoading = false.obs;
  var postList = <PostModel>[].obs;
  var postListSpecific = <PostModel>[].obs;
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  
  
  void getALlJobPost() async {
    
    
    isLoading.value = true;
    try{
      await JobPostProvider().getAllJobPost().then((value) {
        postList.value = value.posts;


        ///if publish == 1 then it will be added
        postListSpecific.value = value.posts.where((element) => element.isPublished.toString() == "1").toList();
      });
    }catch(e){
      print("error ${e}");
    }
    finally{
      isLoading.value = false;

    }
    
  }
  
}
