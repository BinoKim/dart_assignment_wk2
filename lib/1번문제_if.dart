// 1번 문제
// if, else if, else로 풀기

// int testResult = 84;  

void score (int testResult) {
  if (testResult >= 90) {
    print("이 학생의 점수는 $testResult점 이며, 등급은 A 등급입니다!");
  } else if (testResult >= 80) {
    print("이 학생의 점수는 $testResult점 이며, 등급은 B 등급입니다!");
  } else {
    print("이 학생의 점수는 $testResult점 이며, 등급은 C 등급입니다!");
  }
}

void main() {
  
  score(79);
  score(97);
  score(84);
}

