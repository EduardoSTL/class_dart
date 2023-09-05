void main(){
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneration', equipo: 'X-MEN');
  print(wolverine);
  print('Nombre: ${wolverine.name}');
  print('Poder: ${wolverine.power}');
  print('Equipo: ${wolverine.equipo}');
}

class Hero{
  String name;
  String power;
  String equipo;

  Hero({
    required this.name, 
    this.power = 'Sin poderes',
    this.equipo = 'Sin equipo',
});

@override
String toString(){
  return '$name - $power, $equipo';
}

// Hero(String pName, String pPower)
// :name = pName, power = pPower;
}