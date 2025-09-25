// 2번 문제 함수로 만들기


Map<String, int> cart = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

void personalCart(listName, mapName) {
  int totalPrice = 0;
  int i = 0;
  for (i = 0; i < listName.length; i++) {
    if (mapName.containsKey(listName[i])) {
      totalPrice += cart[listName[i]]!;
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


void main() {
  
  List<String> sunny = ["티셔츠", "바지", "모자", "티셔츠", "바지"];
  List<String> bino = ["티셔츠", "바지"];

  
  personalCart(sunny, cart);
  print("-" * 35);
  personalCart(bino, cart);  
}  
