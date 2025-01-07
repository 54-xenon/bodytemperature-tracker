import 'package:bodytemperatracker/screens/data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "体温を記録",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              // 履歴のページへと飛ぶ
              Navigator.push(context, MaterialPageRoute(builder: (context) => DataScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // 設定ページへ飛ぶ
            },
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '今日の体温',
                style: TextStyle(
                  
                ),
              ),
              Center(
                child: Text(
                  '--.-' + '℃', // 初期値は--.-にして、今日の記録はまだ亞ありm戦と表示
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 100),
              TextField(
                // 数字だけ入力できるようにTextFiledを制限
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen,
                    ),
                  ),
                  icon: Icon(Icons.hot_tub_outlined),
                  labelText: '体温を入力',
                ),              
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: const Text('記録する',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}