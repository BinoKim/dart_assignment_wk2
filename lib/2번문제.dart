// 2번 문제

Map<String, int> cart = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

List<String> pCart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

void main() {
  
  int totalPrice = 0;
  int i = 0;
  for (i = 0; i < pCart.length; i++) {
    if (cart.containsKey(pCart[i])) {     //containsKey()를 사용해 null을 어느정도 피함
      totalPrice += cart[pCart[i]]!;      //map 값을 누적하려면 null처리를 위해 ! 를 꼭 넣어야 함
    }
  }
  
  double discount = 0;
  if (totalPrice > 20000) {
    discount = totalPrice * 0.1;
  }
  
  double finalPrice = totalPrice - discount;
  
  print("장바구니에 $totalPrice원 어치를 담으셨네요!");
  print("할인금액 : $discount원");
  print("최종적으로 결제하실 금액은 $finalPrice원 입니다!");
  
}
