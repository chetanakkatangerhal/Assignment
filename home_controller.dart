// ignore_for_file: unnecessary_overrides

import 'package:dynamic_item_list_view_flutter_getx/app/data/model/employee_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<List<CommentModel>> comment = Rx<List<CommentModel>>([]);
  TextEditingController commentTextEditingController = TextEditingController();
 
  late CommentModel commentModel;
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
    nameTextEditingController.dispose();
    addressTextEditingController.dispose();
  }

  addComment(String comment) {
    CommentModel = CommentModel(name: comment);
    comment.value.add(CommentModel);
    itemCount.value = comments.value.length;
    nameTextEditingController.clear();
    addressTextEditingController.clear();
  }

  removeComment(int index) {
    comments.value.removeAt(index);
    itemCount.value = employees.value.length;
  }
}
