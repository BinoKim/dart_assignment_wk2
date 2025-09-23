// 1번 문제
// switch로 풀기

void score (int testResult) {
  
  switch (testResult) {
    case >= 90:
    print("이 학생의 점수는 $testResult점 이며, 등급은 A 등급입니다!");
    break;
    case >= 80:
    print("이 학생의 점수는 $testResult점 이며, 등급은 B 등급입니다!");
    break; 
    default: 
    print("이 학생의 점수는 $testResult점 이며, 등급은 C 등급입니다!");
  }    
}

void main() {
  
  score(79);
  score(97);
  score(84);
}

//결과값
/*
이 학생의 점수는 79점 이며, 등급은 C 등급입니다!
이 학생의 점수는 97점 이며, 등급은 A 등급입니다!
이 학생의 점수는 84점 이며, 등급은 B 등급입니다!
*/