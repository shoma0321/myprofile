import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoma\'s portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ToDo: ここから下を編集しよう！
    return Scaffold(
      appBar: AppBar(title: const Text('Shoma\'s profile')),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset('images/background.jpg'),
                ),
                const Positioned(
                  top: 80.0,
                  left: 20.0,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                      'images/profile.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 220,
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 30.0),
              child: const Text(
                'Shoma Ito',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              width: 300,
              child: const Text(
                '初めまして東洋大学社会学部メディアコミュニケーション学科3年の伊藤奨真です！大学生活では若者の「夢」をテーマにした学生団体の立ち上げと運営、WEB制作やWEB開発などのプログラミングをやっていました！趣味はカラオケ、フットサル、読書、プログラミングです！',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20.0),
                child: const Text(
                  '・好きなこと・もの',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Row(
              children: [
                Image.asset(
                  'images/music.jpg',
                  width: 130,
                  height: 200,
                ),
                Image.asset(
                  'images/program.jpg',
                  width: 130,
                  height: 200,
                ),
                Image.asset(
                  'images/beef.jpeg',
                  width: 130,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
