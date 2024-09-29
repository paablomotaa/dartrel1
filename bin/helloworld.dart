
import 'package:helloworld/ej1.dart';
import 'package:helloworld/ej2.dart';
void main(List<String> arguments) {
  //adivinaElNumero(1000);
  Usuario user1 = Usuario(id: 1, username: 'pablomota', password: '1234', email: 'pablomotaa@iesportada.org',nombre: 'Pablo', apellidos: 'Mota García',nacionalidad: 'España',nacimiento: '2005-02-23');
  print('$user1');
  print(user1.nombreCompleto);
  

}
