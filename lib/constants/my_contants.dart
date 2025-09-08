import 'package:doc_ui/constants/my_image.dart';
import 'package:doc_ui/models/my_doc.dart';

abstract class MyContants {
  static MyDoc doneIcon =
      MyDoc(title: 'Done', img: MyImage.doneImg, subTitle: '.icon');

  static MyDoc downloadIcon =
      MyDoc(title: 'Download', img: MyImage.downloadImg, subTitle: '.icon');

  static MyDoc homeIcon =
      MyDoc(title: 'Home', img: MyImage.homeImg, subTitle: '.icon');
  static List<MyDoc> menuIcon = [
    MyDoc(title: 'Menu1', img: MyImage.menu1Img, subTitle: '.menu'),
    MyDoc(title: 'Menu2', img: MyImage.menu2Img, subTitle: '.menu'),
  ];
  static List<MyDoc> refreshIcon = [
    MyDoc(title: 'Refresh1', img: MyImage.folder1Img, subTitle: '.folder'),
    MyDoc(title: 'Refresh2', img: MyImage.folder2Img, subTitle: '.folder'),
    MyDoc(title: 'Refresh3', img: MyImage.folder2Img, subTitle: '.folder'),
  ];
  static List<MyDoc> userIcon = [
    MyDoc(title: 'User1', img: MyImage.user1Img, subTitle: '.img'),
    MyDoc(title: 'User2', img: MyImage.user2Img, subTitle: '.img'),
    MyDoc(title: 'User3', img: MyImage.user3Img, subTitle: '.img'),
  ];

  static List<MyDoc> myDocs = [
    MyDoc(title: 'Chart1', img: MyImage.chirt1Img, subTitle: '.doc'),
    MyDoc(title: 'Chart2', img: MyImage.chirt2Img, subTitle: '.doc'),
    MyDoc(title: 'Chart3', img: MyImage.chirt3Img, subTitle: '.doc'),
    MyDoc(title: 'Chart4', img: MyImage.chirt4Img, subTitle: '.doc'),
    MyDoc(title: 'Cloud1', img: MyImage.cloud1Img, subTitle: '.psd'),
    MyDoc(title: 'Cloud2', img: MyImage.cloud2Img, subTitle: '.psd'),
    MyDoc(title: 'Cloud3', img: MyImage.cloud3Img, subTitle: '.psd'),
    MyDoc(title: 'Assets', img: MyImage.folder1Img, subTitle: '.folder'),
    MyDoc(title: 'Stuff', img: MyImage.folder2Img, subTitle: '.folder'),
    MyDoc(title: 'Mountain1', img: MyImage.mountain1Img, subTitle: '.jpeg'),
    MyDoc(title: 'Mountain2', img: MyImage.mountain2Img, subTitle: '.jpeg'),
    MyDoc(title: 'Mountain3', img: MyImage.mountain3Img, subTitle: '.jpeg'),
    MyDoc(title: 'Mountain4', img: MyImage.mountain4Img, subTitle: '.jpeg'),
    MyDoc(title: 'Wave1', img: MyImage.wave1Img, subTitle: '.xls'),
    MyDoc(title: 'Wave2', img: MyImage.wave2Img, subTitle: '.xls'),
    MyDoc(title: 'Wave3', img: MyImage.wave3Img, subTitle: '.xls'),
    MyDoc(title: 'Site', img: MyImage.siteImg, subTitle: '.net'),
    MyDoc(title: 'Water1', img: MyImage.water1Img, subTitle: '.xcode'),
    MyDoc(title: 'Water2', img: MyImage.water2Img, subTitle: '.xcode'),
    MyDoc(
        title: 'Illustration', img: MyImage.illustrationImg, subTitle: '.eps'),
    MyDoc(title: 'Record', img: MyImage.recordImg, subTitle: '.mp3'),
  ];
}
