import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // ElevatedButton
            //hovered : 마우스가 올라갔을 때
            //focused : 포커스가 됐을때(텍스트필드)
            //pressed : 눌렀을 때
            //dragged : 드래그 됐을 때
            //scrollUnder : 다른 컴포넌트 밑으로 스크롤 됐을 때
            //disabled : 비활성화 됐을 때
            //selected : 선택됐을 때(체크박스, 라디오 버튼)
            //error : 에러가 있을 때
            //MaterialStateProperty.all() : 모든 상태에 적용
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.resolveWith((states){
                    //눌렀을때 색상변경
                      if(states.contains(MaterialState.pressed)){
                        return Colors.grey;
                      }
                      return Colors.red;
                    },
                  ),
                  padding: MaterialStateProperty.resolveWith((states){
                    //눌렀을때 패딩변경
                    if(states.contains(MaterialState.pressed)){
                      return EdgeInsets.all(10);
                    }
                    return EdgeInsets.all(20);
                  }),
                  shadowColor: MaterialStateProperty.all(Colors.green),
                  elevation: MaterialStateProperty.all(10),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                child: Text('ElevatedButton'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 10,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  padding: EdgeInsets.all(50),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Text('ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text('OutlinedButton'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.red,
                  elevation: 10,
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text('TextButton'),
              ),
            ],
        ),
      )
    );
  }
}
