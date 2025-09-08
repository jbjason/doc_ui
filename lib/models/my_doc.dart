
class MyDoc {
  final String title;
  final String img;
  final String subTitle;
  MyDoc({
    required this.title,
    required this.img,
    required this.subTitle,
  });

  MyDoc copyWith({
    String? title,
    String? img,
    String? subTitle,
  }) {
    return MyDoc(
      title: title ?? this.title,
      img: img ?? this.img,
      subTitle: subTitle ?? this.subTitle,
    );
  }
}
