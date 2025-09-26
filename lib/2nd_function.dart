// 2번 문제 함수로 만들기

// 기본 가격 설정
Map<String, int> cart = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

// 장바구니 리스트 이름과 기본가격 맵의 이름을 받는 함수
// 장바구니 리스트를 인덱스 번호로 순회하며 맵의 키와 매치 되는지 확인한다.
// 매치되면 해당 값을 변수에 더한다. 리스트의 모든 내용을 다 확인한 뒤 최종값을 출력하고 종료한다.
void personalCart(listName, mapName) {
  int totalPrice = 0;
  int i = 0;
  for (i = 0; i < listName.length; i++) {
    if (mapName.containsKey(listName[i])) {
      totalPrice += cart[listName[i]]!;
    }
  }
  
  // 총 가격이 20,000원 이상일 경우 10% 할인을 한다.
  //double discount = 0;
  int discount = 0;
  if (totalPrice > 20000) {
    discount = totalPrice ~/ 10;
  }
  
  // 할인 금액을 뺀 최종 가격을 계산한다.
  int finalPrice = totalPrice - discount;
  
  // 가격 계산 프로세스를 출력한다. 
  print("장바구니에 $totalPrice원 어치를 담으셨네요!");
  print("할인금액 : $discount원");
  print("최종적으로 결제하실 금액은 $finalPrice원 입니다!");
  
}


void main() {
  
  // 장바구니 리스트를 만든다.
  List<String> sunny = ["티셔츠", "바지", "모자", "티셔츠", "바지"];
  List<String> bino = ["티셔츠", "바지"];

  // 함수를 호출한다.
  personalCart(sunny, cart);
  print("-" * 35); //구분선
  personalCart(bino, cart);  
}  
