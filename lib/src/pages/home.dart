import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/components/custom_appbar.dart';
import 'package:flutter_getx_practice/src/components/video_widget.dart';
import 'package:flutter_getx_practice/src/controller/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed("/detail/239587");
              },
              child: VideoWidget(
                  video: controller.youtubeResult.value.items[index]),
            );
          },
                  childCount: controller.youtubeResult.value.items == null
                      ? 0
                      : controller.youtubeResult.value.items.length))
        ],
      ),
    ));
  }
}
