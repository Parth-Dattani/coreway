import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/constant.dart';

class ListWidget extends StatelessWidget {

   final String title;
   final String section;
   final String description;
   final String date;
   final String newsLink;
   final String image;

  const ListWidget({Key? key,
    required this.title,
    required this.section,
    required this.description,
    required this.date,
    required this.newsLink,
    required this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: ColorConfig.colorDarkRed,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  section,
                  style: CustomTextStyle.sectionText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  "RE : $title",
                  style:  CustomTextStyle.titleText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style:  CustomTextStyle.subTitleText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  height: 20,
                  color: ColorConfig.colorBlack,
                  indent: 1.0,
                  endIndent: 150.0,
                ),
                Text(
                  date,
                  style:  CustomTextStyle.dateText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
            // IconButton(onPressed: (){
              PopupMenuButton(onSelected: (value) {
                  //selectedItem = value.toString();

                Navigator.pushNamed(context, value.toString());
              }, itemBuilder: (BuildContext bc) {
                return  [
                  const PopupMenuItem(
                    value: 'View',
                    child: Text("view"),
                  ),
                  PopupMenuItem(
                    value: 'Hide',
                    child: Text("hide", style: CustomTextStyle.sectionText,
                    ),
                  ),
                ];
              }
              )
   //          },
   // icon: const Icon(Icons.more_vert))
          ],
        ),
      ),
    );
  }
}

/*

ListTile(

      leading:
      Container(
          child: Image.network(image,height: 450, width: 150,)),
      // Container(
      //   height: 100,
      //     width: 150,
      //     child: Image.network(image,fit: BoxFit.cover)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section,
            style: CustomTextStyle.timeStyle,
          ),
          Text(
            title,
            style: CustomTextStyle.newsHeadLineText,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(ImagePath.bbcNewsIcon),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: Get.width*0.3,

                    child: Text(
                      byLine,
                      style: CustomTextStyle.timeStyle,
                       overflow: TextOverflow.ellipsis,
                       maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(Icons.access_time_rounded),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').format(DateTime.parse(publishedDate))
                    , style: CustomTextStyle.timeStyle,),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz, color: ColorsConfig.colorGray,),
                onPressed: (){
                  debugPrint("Share Link : $newsLink");
                  Share.share(newsLink, subject: "Today's News");
                },
              )
            ],
          ),
        ],
      ),
    );
 */