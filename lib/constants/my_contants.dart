import 'package:doc_ui/models/my_doc.dart';

abstract class MyContants {
  static MyDoc doneIcon = MyDoc(
      title: 'Done', img: 'assets/mydoc/icon/done.png', subTitle: '.icon');

  static MyDoc downloadIcon = MyDoc(
      title: 'Download',
      img: 'assets/mydoc/icon/download.png',
      subTitle: '.icon');

  static MyDoc homeIcon = MyDoc(
      title: 'Home', img: 'assets/mydoc/icon/home.png', subTitle: '.icon');
  static List<MyDoc> menuIcon = [
    MyDoc(
        title: 'Menu1', img: 'assets/mydoc/icon/menu1.png', subTitle: '.menu'),
    MyDoc(
        title: 'Menu2', img: 'assets/mydoc/icon/menu2.png', subTitle: '.menu'),
  ];
  static List<MyDoc> refreshIcon = [
    MyDoc(
        title: 'Refresh1',
        img: 'assets/mydoc/icon/folder1.png',
        subTitle: '.folder'),
    MyDoc(
        title: 'Refresh2',
        img: 'assets/mydoc/icon/folder2.png',
        subTitle: '.folder'),
    MyDoc(
        title: 'Refresh3',
        img: 'assets/mydoc/icon/folder2.png',
        subTitle: '.folder'),
  ];
  static List<MyDoc> userIcon = [
    MyDoc(title: 'User1', img: 'assets/mydoc/icon/user1.png', subTitle: '.img'),
    MyDoc(title: 'User2', img: 'assets/mydoc/icon/user2.png', subTitle: '.img'),
    MyDoc(title: 'User3', img: 'assets/mydoc/icon/user3.png', subTitle: '.img'),
  ];

  static List<MyDoc> myDocs = [
    MyDoc(
        title: 'Chart1',
        img: 'assets/mydoc/doc_icon/chart1.png',
        subTitle: '.doc'),
    MyDoc(
        title: 'Chart2',
        img: 'assets/mydoc/doc_icon/chart2.png',
        subTitle: '.doc'),
    MyDoc(
        title: 'Chart3',
        img: 'assets/mydoc/doc_icon/chart3.png',
        subTitle: '.doc'),
    MyDoc(
        title: 'Chart4',
        img: 'assets/mydoc/doc_icon/chart4.png',
        subTitle: '.doc'),
    MyDoc(
        title: 'Cloud1',
        img: 'assets/mydoc/doc_icon/cloud1.png',
        subTitle: '.psd'),
    MyDoc(
        title: 'Cloud2',
        img: 'assets/mydoc/doc_icon/cloud2.png',
        subTitle: '.psd'),
    MyDoc(
        title: 'Cloud3',
        img: 'assets/mydoc/doc_icon/cloud3.png',
        subTitle: '.psd'),
    MyDoc(
        title: 'Assets',
        img: 'assets/mydoc/doc_icon/folder1.png',
        subTitle: '.folder'),
    MyDoc(
        title: 'Stuff',
        img: 'assets/mydoc/doc_icon/folder2.png',
        subTitle: '.folder'),
    MyDoc(
        title: 'Mountain1',
        img: 'assets/mydoc/doc_icon/mountain1.png',
        subTitle: '.jpeg'),
    MyDoc(
        title: 'Mountain2',
        img: 'assets/mydoc/doc_icon/mountain2.png',
        subTitle: '.jpeg'),
    MyDoc(
        title: 'Mountain3',
        img: 'assets/mydoc/doc_icon/mountain3.png',
        subTitle: '.jpeg'),
    MyDoc(
        title: 'Mountain4',
        img: 'assets/mydoc/doc_icon/mountain4.png',
        subTitle: '.jpeg'),
    MyDoc(
        title: 'Wave1',
        img: 'assets/mydoc/doc_icon/wave1.png',
        subTitle: '.xls'),
    MyDoc(
        title: 'Wave2',
        img: 'assets/mydoc/doc_icon/wave2.png',
        subTitle: '.xls'),
    MyDoc(
        title: 'Wave3',
        img: 'assets/mydoc/doc_icon/wave3.png',
        subTitle: '.xls'),
    MyDoc(
        title: 'Site', img: 'assets/mydoc/doc_icon/site.png', subTitle: '.net'),
    MyDoc(
        title: 'Water1',
        img: 'assets/mydoc/doc_icon/water1.png',
        subTitle: '.xcode'),
    MyDoc(
        title: 'Water2',
        img: 'assets/mydoc/doc_icon/water2.png',
        subTitle: '.xcode'),
    MyDoc(
        title: 'Illustration',
        img: 'assets/mydoc/doc_icon/illustration.png',
        subTitle: '.eps'),
    MyDoc(
        title: 'Record',
        img: 'assets/mydoc/doc_icon/record.png',
        subTitle: '.mp3'),
  ];
}
