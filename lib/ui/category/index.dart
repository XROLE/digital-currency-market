import 'package:dcm/data/category/cate_item.dart';
import 'package:dcm/data/category/trending.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  Widget _buildTrendingTile(Trending _trending) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: _trending.isFollowing ? Color.fromRGBO(253, 118, 57, 1) : Color.fromRGBO(148, 172, 188, 1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                  _trending.shortName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Container(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _trending.name,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _trending.userHandle,
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: _trending.isFollowing ? Color.fromRGBO(199, 200, 202, 1) : Colors.white,
                  border: _trending.isFollowing ? null : Border.all(color: Color.fromRGBO(199, 200, 202, 1)),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  if(_trending.isFollowing)
                  Icon(Icons.check, size: 20),
                  SizedBox(width: 8),
                  Text(
                    _trending.isFollowing ? 'Following' : 'Follow',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
        ),
        SizedBox(height: 35),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: _size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(alignment: Alignment.topLeft, child: Icon(Icons.arrow_back_ios)),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: _size.width - 105,
                    padding: EdgeInsets.only(top: 5),
                    child: ListView.builder(
                      itemCount: navKeys.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          navKeys[i],
                          style: TextStyle(
                              fontSize: 18,
                              color: i == 0 ? Colors.black : Colors.black.withOpacity(0.7),
                              fontWeight: i == 0 ? FontWeight.bold : null),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: _size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    height: 300,
                    width: 280,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.1)),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  cateItemList[i].imageUrl,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            cateItemList[i].desc,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            cateItemList[i].userHandle,
                            style: TextStyle(color: Colors.black.withOpacity(0.5)),
                          ),
                        ),
                        SizedBox(height: 35),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(253, 118, 57, 1),
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      '0.48 ETH',
                                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                                decoration: BoxDecoration(
                                    color: Colors.black, borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  'Place a bid',
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(234, 234, 232, 1),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                      '1 of 6',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 113, 118, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 113, 118, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trending',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'NFT\'s that are hot at the moment',
                      style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                )),
            SizedBox(height: 15),
            Container(
              height: _size.height -600,
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: trendingList.length,
                itemBuilder: (context, i) => _buildTrendingTile(trendingList[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> navKeys = [
  'Surreal',
  'Illustration',
  'Nature',
  'Animation',
  'Boosted',
  'Jundiation'
];


