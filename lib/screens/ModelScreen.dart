import 'package:flutter/material.dart';

import '../service/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ModelScreen extends StatelessWidget {
  const ModelScreen({Key? key}) : super(key: key);

  static List<UserInfo> userInfo = Utils.getUserInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _topSearchBar(),
              const SizedBox(
                height: 15,
              ),
              _followTab(),
              const SizedBox(
                height: 15,
              ),
              _postsFeed(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topSearchBar() {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF5E5BBB).withOpacity(0.10),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: TextField(
          cursorColor: Color(0xFF5E5BBB),
          decoration: InputDecoration(
            hintText: 'Поиск',
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xFF5E5BBB),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget _followTab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '3D Модели',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget _postsFeed() {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'assets/img/avatar_${userInfo[index].avatarName}.png',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(userInfo[index].username)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse(userInfo[index].modelUrl);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    width: 330,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          'assets/img/img_${userInfo[index].imgName}.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${userInfo[index].username}: ${userInfo[index].description}',
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 36),
              ],
            ),
          );
        },
      ),
    );
  }
}
