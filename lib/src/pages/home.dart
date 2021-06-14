import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/components/custom_appbar.dart';
import 'package:flutter_getx_practice/src/components/video_widget.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed("/detail/239587");
                },
                child: VideoWidget(),
              );
            },
            childCount: 10,
          ))
        ],
      ),
    );
  }
}
