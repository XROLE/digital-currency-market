import 'package:dcm/data/category/cate_item.dart';
import 'package:dcm/data/category/trending.dart';
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final CateItem? cateItem;
  const ItemDetailsPage({Key? key, this.cateItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.favorite_border_outlined),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            cateItem?.imageUrl ?? '',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Text(
                        cateItem?.desc ?? '',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      child: Text(
                        cateItem?.userHandle ?? '',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.black, borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    'Buy',
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5), shape: BoxShape.circle),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5), shape: BoxShape.circle),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Icon(Icons.share),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(230, 231, 228, 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Current',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20),
                                    Text('0.48ETH',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                    SizedBox(height: 5),
                                    Text('\$sandygrow',
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.5), fontSize: 12)),
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Auction ending in',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20),
                                    Text('03:48:38',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                    SizedBox(height: 5),
                                    Text('\$sandygrow',
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.5), fontSize: 12))
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Provenance',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 25),
                    Container(
                      height: 850,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        itemCount: trendingList.length,
                        itemBuilder: (context, i) => _buildProvenanceTile(trendingList[i]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildProvenanceTile(Trending _trending) {
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
                color: _trending.isFollowing
                    ? Color.fromRGBO(253, 118, 57, 1)
                    : Color.fromRGBO(148, 172, 188, 1),
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
              width: 120,
              child: Text('${_trending.price} ETH', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
      SizedBox(height: 35),
    ],
  );
}
