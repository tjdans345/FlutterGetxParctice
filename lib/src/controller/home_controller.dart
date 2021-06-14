import 'package:flutter_getx_practice/src/models/youtube_video_result.dart';
import 'package:flutter_getx_practice/src/repository/youtube_repository.dart';
import 'package:get/get.dart';

//비디오를 불러오는 비지니스로직 작성
class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult youtubeVideoResult =
        await YoutubeRepository.to.loadVideos();

    if (youtubeVideoResult != null &&
        youtubeVideoResult.items != null &&
        youtubeVideoResult.items.length > 0) {
      youtubeResult(youtubeVideoResult);
    }
  }
}
