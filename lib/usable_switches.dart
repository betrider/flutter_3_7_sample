

void usableSwitches(CharCode charCode){

  switch (charCode) {
    case CharCode.slash when 1 == 1:
      print('1:$charCode');
    case CharCode.plus || CharCode.minus:
      print('2:$charCode');
    default:
      print('3:default');
  }
}

enum CharCode{
  slash,
  star,
  plus,
  minus
}
