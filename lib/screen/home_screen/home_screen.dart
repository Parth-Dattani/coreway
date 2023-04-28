import 'package:coreway/screen/home_screen/widget/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controller/controller.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends GetView<HomeController> {
  static const pageId = '/HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> CommonLoader(
        isLoad: controller.loader.value,
        body : Scaffold(
          key: controller.scaffoldKey,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: ColorConfig.colorRed,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    )),
                  height: Get.height * 0.7,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: ColorConfig.colorWhite,)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Inbox", style: CustomTextStyle.splashText,),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          height: Get.height,
                          width: Get.width * 0.9,
                          decoration: const BoxDecoration(
                              color: ColorConfig.colorWhite,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30)
                              ),
                              boxShadow: [
                              BoxShadow(
                                blurRadius: 2
                              )
                            ]
                          ),

                          child: Column(
                            children: [
                              DefaultTabController(
                                length: controller.tabList.length,
                                child: Container(
                                  width: Get.width * 0.9,
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: const BoxDecoration(
                                      color: ColorConfig.colorSelected,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25)
                                      )
                                  ),
                                  child: Center(
                                    child: TabBar(
                                        isScrollable: true,
                                        labelPadding:  EdgeInsets.only(right: 10),
                                        controller: controller.tabController,
                                        labelColor: ColorConfig.colorWhite,
                                        indicatorWeight: 5,
                                        indicatorColor:ColorConfig.colorRed,
                                        indicatorSize: TabBarIndicatorSize.label,
                                        unselectedLabelColor: ColorConfig.colorBlur,
                                        unselectedLabelStyle: TextStyle(color: ColorConfig.colorBlack),

                                        onTap: (e){
                                          //controller.category = controller.tabList[e];
                                          //controller.categoryNews(controller.category);
                                        },
                                        tabs: List.generate(
                                            controller.tabList.length,
                                                (index) => Tab(
                                              child: Text(
                                                  controller.tabList[index],
                                                  style:
                                                  Theme.of(context).textTheme.displaySmall!.copyWith(
                                                    fontFamily: AppTextStyle.quicksandMedium,
                                                    fontSize: AppTextStyle.textFontSize18,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                              ),
                                            ))

                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Flexible(
                                child:  TabBarView(
                                    physics: const NeverScrollableScrollPhysics(),
                                    controller: controller.tabController,
                                    children:
                                    List.generate(
                                        controller.tabList.length,
                                            (index) {
                                          return  ListView.separated(
                                                itemCount: 15,
                                                itemBuilder: (context, index) {
                                                  return GestureDetector(
                                                    onTap: (){},
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: ListWidget(
                                                        title: "Lara Carft",
                                                        image: ImagePath.imageLogo,
                                                        section: "Lara Carft",
                                                        newsLink: "df",
                                                        description: "Hello, this is for demo purpose.",
                                                        date: "10 Mar 7",
                                                      ),
                                                    )
                                                  );
                                                },
                                                separatorBuilder: (BuildContext context, int index) {
                                                  return Container(height: 15.0);
                                                });
                                        })
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
