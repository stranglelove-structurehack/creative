class UserInfo {
  int id;
  String username;
  String description;
  String avatarName;
  String imgName;
  String adress;
  String modelUrl;
  int likesCount;
  int commentCount;

  UserInfo({
    required this.id,
    required this.username,
    required this.description,
    required this.avatarName,
    required this.imgName,
    required this.adress,
    required this.modelUrl,
    required this.likesCount,
    required this.commentCount,
  });
}

class QuestUserInfo {
  String username;
  String description;
  String avatarName;
  String imgName;
  String adress;
  String modelUrl;
  int likesCount;
  int commentCount;

  QuestUserInfo({
    required this.username,
    required this.description,
    required this.avatarName,
    required this.imgName,
    required this.adress,
    required this.modelUrl,
    required this.likesCount,
    required this.commentCount
  });
}

class Utils {
  static List<UserInfo> getUserInfo() {
    return [
      UserInfo(
          id: 0,
          username: 'player1',
          description:
          'Самая офигенная команда, еще ниче не выиграли, но богаты душой',
          avatarName: 'player1_0',
          imgName: 'strangeLove1',
          adress: '',
          likesCount: 327,
          commentCount: 23,
          modelUrl: 'https://studio.arloopa.com/en/web-ar/shark_37045'
      ),
      UserInfo(
        id: 0,
        username: 'player1',
        description:
            'Гулял по парку, решил выставить давно сделанною модельку',
        avatarName: 'test5',
        imgName: 'player1',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/shark_37045'
      ),
      UserInfo(
        id: 1,
        username: 'MyPersonalJesus',
        description: '',
        avatarName: 'MyPersonalJesus_0',
        imgName: 'MyPersonalJesus',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/datsun-1972_37028'
      ),

      UserInfo(
        id: 2,
        username: 'Иван',
        description: 'Какая яхта 😎😝🤌. Как раз на окно поставить',
        avatarName: 'test0',
        imgName: 'test0',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/shipbottle_37051'
      ),
      UserInfo(
        id: 3,
        username: 'Наталья ЯРГУ',
        description: 'Моя рыбка 🥰. Сегодня утром доделала, наконец-то. Как вам?',
        avatarName: 'test1',
        imgName: 'test1',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/shark_37045'
      ),
      UserInfo(
        id: 4,
        username: 'Анна Иванова',
        description: 'Лучшие друзья девушки бриллианты, но спортивное купе тоже сойдёт 😚. Будет радовать мой взгляд, стоя у монитора 😌',
        avatarName: 'test2',
        imgName: 'test2',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/datsun-1972_37028'
      ),
      UserInfo(
        id: 5,
        username: 'Генадий',
        description: '',
        avatarName: 'test3',
        imgName: 'test3',
        adress: '',
        likesCount: 327,
        commentCount: 23,
        modelUrl: 'https://studio.arloopa.com/en/web-ar/datsun-1972_37028'
      ),
      // UserInfo(
      //   id: 6,
      //   username: 'test4',
      //   description: '',
      //   avatarName: 'test4',
      //   imgName: 'test4',
      //   adress: '',
      //   likesCount: 327,
      //   commentCount: 23,
      // ),
      // UserInfo(
      //   id: 7,
      //   username: 'test5',
      //   description: '',
      //   avatarName: 'test5',
      //   imgName: 'test5',
      //   adress: '',
      //   likesCount: 327,
      //   commentCount: 23,
      // ),
    ];
  }

  static List<QuestUserInfo> getQuestUserInfo() {
    return <QuestUserInfo>[
      QuestUserInfo(
          username: 'CuteAnimeGirl',
          description: 'Квест “Ninja”, в котором вы сможете окунуться в мир миленьких (и не только!!) роботов',
          avatarName: 'test0',
          imgName: 'test0',
          adress: '',
          likesCount: 327,
          commentCount: 23,
          modelUrl: 'https://studio.arloopa.com/en/web-ar/shark_37045'
      ),
      QuestUserInfo(
          username: 'MyPersonalJesus',
          description: 'Лучшие друзья девушки бриллианты, но спортивное купе тоже сойдёт 😚. Будет радовать мой взгляд, стоя у монитора 😌',
          avatarName: 'test1',
          imgName: 'test1',
          adress: '',
          likesCount: 327,
          commentCount: 23,
          modelUrl: 'https://studio.arloopa.com/en/web-ar/datsun-1972_37028'
      ),
      // QuestUserInfo(
      //     username: 'Генадий',
      //     description: '',
      //     avatarName: 'test3',
      //     imgName: 'test3',
      //     adress: '',
      //     likesCount: 327,
      //     commentCount: 23,
      //     modelUrl: 'https://studio.arloopa.com/en/web-ar/datsun-1972_37028'
      // ),

    ];
  }
}
