void main(){
  //variables final compilan más rapida al estar definidas desde el principio
  final mySquare = Square (side: 10);
  print('actual side:: ${mySquare._side}');
  mySquare.side = 5;
  
  print('area: ${mySquare.area}');
  print('side: ${mySquare.side}');
}

class Square{
  double _side; //side * side

  Square({required double side})
  : assert(side >= 0, 'side must be >= 0'),
  //assert = interrumpe la ejecución normal del programa si una condición booleana es falsa
  _side = side;

  double get side {
    return _side;
  }

  double get area{
    return _side * _side; 
  }

  set side(double value){
    print('setting new value $value');
    if (value <0) throw 'Value must be >= 0';
    _side = value;
  }

  double calculateArea(){
    return _side * _side;
  }
}