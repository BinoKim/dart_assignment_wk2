import 'dart:math';


// 이번주 로또 1등 번호 6개
Set<int> thisWeekNumber = {9, 19, 29, 35, 37, 38};


//로또 발급기 함수
Set<int> numCreater () {  
  // 로또 번호 발급기
  Set<int> myNum = {};
  int i = 0;
  for (i = 0; myNum.length < 6; i ++) {
    myNum.add(Random().nextInt(45) + 1);
    i += 1;
  } 
  print("이번주 로또 번호 : $thisWeekNumber");
  print("발급한 로또 번호 : $myNum");
  return myNum;
}


// 당첨 번호와 새로 발급 받은 번호를 비교
void compareNum (yourNum) {  
  int matchN = 0;
  for (int eachNum in yourNum) {
    if (thisWeekNumber.contains(eachNum)) {
    //  print(eachNum);
      matchN += 1;
    } else {
      continue;
    }  
  }
  // 당첨 번호 갯수에 따른 내용 출력
  switch (matchN) {
    case >= 5:
      print("당첨 여부: 축하합니다!! 1등 당첨!!!");
      break;
    case >= 4:
      print("당첨 여부: 축하합니다!! 2등 당첨!!!");
      break;
    case >= 3:
      print("당첨 여부: 축하합니다!! 3등 당첨!!!");
      break;
    default:
      print("당첨 여부: 당첨 실패.. 다음 기회에!!");
  }
  
  print("당첨 번호 갯수 : $matchN개");
  print("현재 발급한 로또 번호 : []");
}


void main() {
 
  // 함수로 번호를 발급 받고 호출하기.
  final firstNum = numCreater();
  compareNum(firstNum);
  
  // 구분선
  print("-" * 40);
  
  final secondNum = numCreater();
  compareNum(secondNum);
  
  
}