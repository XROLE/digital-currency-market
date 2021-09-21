class CateItem {
  String imageUrl;
  String userHandle;
  String desc;

  CateItem({this.imageUrl = '', this.userHandle = '', this.desc = ''});
}

final List<CateItem> cateItemList = [
  CateItem(
    imageUrl: 'assets/img/cat1.png',
    userHandle: '@xrolediamond',
    desc: 'Power of relationship',
  ),
  CateItem(
    imageUrl: 'assets/img/cat2.png',
    userHandle: '@valsido32',
    desc: 'End time and now',
  ),
  CateItem(
    imageUrl: 'assets/img/cat3.png',
    userHandle: 'Smoking noise',
    desc: '@centRemi',
  ),
  CateItem(
    imageUrl: 'assets/img/cat4.png',
    userHandle: 'Brutal tech vibe',
    desc: '@okrabis',
  ),
  CateItem(
    imageUrl: 'assets/img/cat5.png',
    userHandle: 'Grooming the bazz',
    desc: '@keynote',
  ),
];