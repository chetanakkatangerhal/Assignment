// ignore_for_file: unnecessary_overrides

import 'package:dynamic_item_list_view_flutter_getx/app/data/model/employee_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<List<CommentsModel>> comments = Rx<List<CommentModel>>([]);
  TextEditingController commentsTextEditingController = TextEditingController();
 
  late CommentsModel commentsModel;
  var itemCount = 0.obs;
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
    commentsTextEditingController.dispose();
   
  }

  addComments(String comments) {
    CommentsModel = CommentsModel(name: comments);
    comments.value.add(CommentsModel);
    itemCount.value = comments.value.length;
    commentsTextEditingController.clear();
    
  }

  removeComments(int index) {
    comments.value.removeAt(index);
    itemCount.value = comments.value.length;
  }
}
