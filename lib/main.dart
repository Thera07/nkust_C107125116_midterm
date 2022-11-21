import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Midterm'),
        ),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '自傳',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: '大學目標',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '專題方向',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {
  final String s1 = '之所以想進入金融系學習，起初的原因無非是因為自身對「金融」二字的憧憬。而後逐漸了解目前台灣的商業環境與局勢後對金融業有了更深的體認，更進入學校網站查詢安排的課程，越發的感到興趣勃勃。'
                    '在台灣加入WTO後又臨產業界與金融業正面臨轉型合併或升級，金融業對具國際觀的投資理財專業人才的需求逐漸增加。將自己投身金融業無非是一筆鉅額的投資，而這筆投資的報酬率將由我自己來決定。進入'
      '雄商國貿科是我人生中第一個跳板，相信進入金融系將成為我的第二個跳板。有了在雄商國貿積累的基礎，積少成多。加上未來堆砌的實力，聚沙成塔。在未來造就一集國際觀、專業能力於一身的金融人才。';

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //先放個標題
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(
              s1,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大一時期"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考ˊ
                    Text('經濟學(必修)'),
                    Text('微積分(必修)'),
                    Text('民法(必修)'),
                    Text('計算機概論(必修)'),
                    Text('會計學(必修)'),
                    Text('商用英語(選修)'),
                    Text('總體經濟學(選修)'),
                    Text('商業倫理(必修)'),
                    Text('金融市場(必修)'),
                    Text('票據法(選修)'),
                  ],
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大二時期"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('統計學(必修)'),
                    Text('金融機構管理(必修)'),
                    Text('貨幣銀行(必修)'),
                    Text('保險學(選修)'),
                    Text('個體經濟學(選修)'),
                    Text('國際貿易(選修)'),
                    Text('財務管理(選修)'),
                    Text('金融法(必修)'),
                  ],
                ),
              ),
            ],),
          Row(),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("大一時期" ,style: TextStyle(fontSize: 25)),
              Text("大二時期" ,style: TextStyle(fontSize: 25)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 110,
                child: ListView(
                  children: const [
                    Text('1.人際關係'),
                    Text('2.享受大學'),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 110,
                child: ListView(
                  children: const [
                    Text('1.健身房'),
                    Text('2.努力修課'),
                    Text('3.考取證照'),
                  ],
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("----------------------------------------------"
                  "----------------------------------------------"),
            ],),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("大三時期" ,style: TextStyle(fontSize: 25)),
              Text("大四時期" ,style: TextStyle(fontSize: 25)),
            ],),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 150,
                child: ListView(
                  children: const [
                    Text('1.想辦法畢業'),
                    Text('2.專題'),
                    Text('3.健身房'),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 150,
                child: ListView(
                  children: const [
                    Text('1.健身房'),
                    Text('2.實習'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('新冠肺炎對股票市場的影響'),
    );
  }
}