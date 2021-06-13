import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  const YoutubeBottomSheet({Key key}) : super(key: key);

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("만들기", style: TextStyle(fontSize: 16.0)),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: Get.back,
        )
      ],
    );
  }

  Widget _itemButton(
      {String icon, double iconSize, String label, Function() onTap}) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            width: 17,
            height: 17,
            child: SvgPicture.asset("assets/svg/icons/upload.svg"),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text("동영상 업로드"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(left: 20.0),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 10.0,
            ),
            _itemButton(
                icon: "upload.svg",
                iconSize: 17,
                label: "동영상 업로드",
                onTap: () {
                  print("동영상 업로드 기능");
                }),
            _itemButton(),
          ],
        ),
      ),
    );
  }
}
