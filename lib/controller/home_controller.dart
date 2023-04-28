import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/model.dart';
import 'controller.dart';

class HomeController extends BaseController with GetSingleTickerProviderStateMixin
{
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxList<LoginResponse> loginResponse = <LoginResponse>[].obs;
  late TabController tabController =
  TabController(vsync: this, length: tabList.length, initialIndex: 0);

  final List<String> tabList = [
    "Customer Inbox",
    "Admin Inbox",
  ];

  @override
  void onInit() {
    super.onInit();
  }



/*  Future<void> logOut() async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    sharedPreferencesHelper.clearPrefData();
    Get.offAndToNamed(LoginScreen.pageId);
  }*/

  /*void getCategory() async {
    loader.value = true;
    var response = await RemoteServices.getCategory();
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      if (jsonData.isNotEmpty) {
        for (var i in jsonData) {
          categoryList.add(i);
        }
        //debugPrint("List : ${resultDataList[0].author}");
        loader.value = false;
      } else {
        loader.value = false;
      }
    }
  }*/


}
