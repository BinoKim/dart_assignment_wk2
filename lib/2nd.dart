// 2번 문제

// 가격 설정을 맵으로 만든다.
Map<String, int> cart = {"티셔츠": 10000, "바지": 8000, "모자": 4000};
// 장바구니 리스트를 만든다.
List<String> pCart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

void main() {
  
  // 최종 가격 계산을 위한 변수
  int totalPrice = 0;
  
  // 반복문을 위한 변수
  int i = 0;

  // 반복문을 통해 장바구니 품목을 맵에서 확인하고 해당되면 가격을 받아온다.
  for (i = 0; i < pCart.length; i++) {
    if (cart.containsKey(pCart[i])) {     //containsKey()를 사용해 null을 어느정도 피함
      totalPrice += cart[pCart[i]]!;      //map 값을 누적하려면 null처리를 위해 ! 를 꼭 넣어야 함
    }
  }
  
  // 20,000원 이상일 경우 10% 할인
  double discount = 0;
  if (totalPrice > 20000) {
    discount = totalPrice * 0.1;
  }
  
  //최종 가격 계산
  double finalPrice = totalPrice - discount;
  
  // 가격 계산 프로세스를 출력한다.
  print("장바구니에 $totalPrice원 어치를 담으셨네요!");
  print("할인금액 : $discount원");
  print("최종적으로 결제하실 금액은 $finalPrice원 입니다!");
  
}
