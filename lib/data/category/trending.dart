class Trending {
  String name;
  String shortName;
  String userHandle;
  num price;
  bool isFollowing;

  Trending({this.name = ' ', this.shortName = '', this.userHandle = '', this.isFollowing = false, this.price = 0});
}

List<Trending> trendingList = [
  Trending(
    name: 'Xrole Diamond',
    shortName: 'XD',
    userHandle: '@xrolediamond',
    isFollowing: true,
    price: 0.48,
  ),
  Trending(
    name: 'Dipo Ijaye',
    shortName: 'DI',
    userHandle: '@oladelux',
    isFollowing: false,
    price: 0.12
  ),
  Trending(
    name: 'Jane Onyenze',
    shortName: 'JO',
    userHandle: '@jenywinto',
    isFollowing: false,
    price: 0.76
  ),
  Trending(
    name: 'Ocha Kingss',
    shortName: 'OK',
    userHandle: '@malizy',
    isFollowing: true,
    price: 0.32
  ),
  Trending(
    name: 'Sani Munkailu',
    shortName: 'SM',
    userHandle: '@sanidanger',
    isFollowing: false,
    price: 0.45
  ),
  Trending(
    name: 'Paul Opia',
    shortName: 'PO',
    userHandle: '@pauloski',
    isFollowing: true,
    price: 0.91
  ),
  Trending(
    name: 'Sani Munkailu',
    shortName: 'SM',
    userHandle: '@sanidanger',
    isFollowing: true,
    price: 0.09
  ),
  Trending(
    name: 'Sani Munkailu',
    shortName: 'SM',
    userHandle: '@sanidanger',
    isFollowing: false,
    price: 0.56
  ),
  Trending(
    name: 'Sani Munkailu',
    shortName: 'SM',
    userHandle: '@sanidanger',
    isFollowing: false,
    price: 0.55
  ),
];
