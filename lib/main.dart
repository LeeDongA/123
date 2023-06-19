import 'package:flutter/material.dart';

/// 최초 실행되는 부분
Future<void> main() async {
  runApp(MyApp());
}

/// 앱 최상위 클래스
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StorePage(), // 홈 클래스 지정
    );
  }
}

/// 홈 클래스
class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column( // 자식 컴포넌트를 컬럼으로 추가
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0), // 각 child에 padding 20 지정
                child: Row( // 자식 컴포넌트를 row로 추가
                  children: const [
                    Spacer(), // 공백 컴포넌트로 간격 띄우기
                    Text('신상품', style: TextStyle(fontWeight: FontWeight.bold)), // 텍스트
                    Spacer(), // 공백 컴포넌트로 간격 띄우기
                    Text('남성', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(), // 공백 컴포넌트로 간격 띄우기
                    Text('여성', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(), // 공백 컴포넌트로 간격 띄우기
                    Text('아울렛', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(), // 공백 컴포넌트로 간격 띄우기
                  ],
                ),
              )
              , Expanded(child: Image.asset("assets/fashion3.jpg", fit: BoxFit.cover)) // 이미지
              , const SizedBox(height: 2,) // 이미지 사이에 공백 높이 2
              , Expanded(child: Image.asset("assets/fashion4.jpg", fit: BoxFit.cover)) // 이미지
            ],
          ),
        ));
  }
}