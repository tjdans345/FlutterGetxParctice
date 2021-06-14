import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDFfMTc4%2FMDAxNjA5NTAzMTc0MjY0.bAhBWm7nDc8l2yPgDCa2LYX3n0HBo2HLzg8FYbP0dTAg.nPNiQKBgJNdYHfQlsIVbmBV_s_Le8MWkd3izx_MMNS8g.JPEG.atm500%2F1609252568086.jpg&type=a340")
                .image,
          ),
          SizedBox(width: 15),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "개남 유튜브 다시 보기개남 유튜브 다시 보기개남 유튜브 다시 보기개남 유튜브 다시 보기개남 유튜브 다시 보기",
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.topCenter,
                      icon: Icon(Icons.more_vert),
                      onPressed: () {})
                ],
              ),
              Row(
                children: [
                  Text(
                    "개발 하는 남자",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                  Text(" · "),
                  Text(
                    "조회수 1000회",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  ),
                  Text(" · "),
                  Text(
                    "2021-02-13",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailInfo(),
        ],
      ),
    );
  }
}
