import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO
    // Use riverpod and make the _size variable global

    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        color: Color.fromRGBO(0, 0, 0, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 250,
              child: Image.asset('assets/img/logo.png'),
            ),
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Text(
                      'The world\'s first and largest digital market place',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Text(
                      'Then NFT Market place provides you with the opporturnity to create',
                      style: TextStyle(color: Color.fromRGBO(114, 113, 118, 1), fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 113, 118, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 113, 118, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('I am a chosen one you tapped me');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 118, 57, 1),
                          borderRadius: BorderRadius.circular(50)),
                      height: 65,
                      child: Center(
                        child: Text(
                          'Get started',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
