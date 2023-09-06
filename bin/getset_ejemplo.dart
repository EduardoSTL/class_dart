class Gfg{
  String geekName;

  String get getName{
    return geekName;
  }

  set setName(String name){
    geekName = name;
  }
  
}

void main() {
  //Creando instancia de clase
  Gfg geek = Gfg();

  geek.setName = "GeerkForGeeks";

  print("Welcome to ${geek.getName}");
}