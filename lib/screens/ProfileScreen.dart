import 'package:flutter/material.dart';

import '../service/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static List<UserInfo> userInfo = Utils.getUserInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5E5BBB),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 1),
            _userInfoRow(),
            Spacer(flex: 1),
            _body(context),
          ],
        ),
      ),
    );
  }

  Widget _userInfoRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
              width: 40,
              height: 40,
              child: Image.asset('assets/img/avatar_test0.png')),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Жукова Эвелина',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Ярославль',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
              ),
              color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _topButtonBar(),
              SizedBox(
                height: 10,
              ),
              _postsFeed(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _topButtonBar() {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF5E5BBB),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              '3D модели',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Spacer(flex: 1),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF5E5BBB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Квесты',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _postsFeed() {
    return Container(
      width: 370,
      height: 350,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: Image.asset('assets/img/img_MyPersonalJesus.png',
                fit: BoxFit.fill),
          ),
          Container(
            width: 370,
            height: 100,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),            color: Colors.white,),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Robot'),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/img/avatar_test0.png'),
                          ),
                          Text('Жукова Эвелина'),
                        ],
                      )
                    ],
                  ),
                  Text(
                    '\$15 usd',
                    style: TextStyle(fontSize: 25),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
