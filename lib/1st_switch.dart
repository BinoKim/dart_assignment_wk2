// 1번 문제
// switch로 풀기


// switch문으로 조건을 만들어 동작 실행 
// case별로 등급을 나눴음
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
  
  // 함수와 해당 파라미터의 숫자로 동작 실행
  score(79);
  score(97);
  score(84);
}

