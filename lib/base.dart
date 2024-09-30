abstract class Base{
  Base? context; //Definimos el campo context como nullable.
  static int _numInstancias = 0; //numero de instancias como valor privado.
  Base({Base? context}){
    _numInstancias++; //Incrementa el número de instancias.
  }
  @override
  String toString() => 'Context: $context)';
  static int get numInstancias => _numInstancias; //getter para el numero de instancias.
}