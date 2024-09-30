
import 'package:helloworld/base.dart';
import 'package:helloworld/ej1.dart';
import 'package:helloworld/ej2.dart';
import 'package:helloworld/usuarionomutable.class.dart';
void main(List<String> arguments) {
  //adivinaElNumero(1000);
  Usuario user1 = Usuario(id: 1, username: 'pablomota', password: '1234', email: 'pablomotaa@iesportada.org',nombre: 'Pablo', apellidos: 'Mota García',nacionalidad: 'España',nacimiento: '2005-02-23');
  print('$user1');
  print(user1.nombreCompleto);
  // UsuarioNoMutable unm1 = UsuarioNoMutable(id: 1, username: 'pmmg', password: '1234', email: 'pmmg@iesportada.org');
  // UsuarioNoMutable unmcop = unm1.copyWith(password: '1122');
  // print(unmcop);
  // print(user1.edad);
  // print(user1.creacion);
  // Usuario user2 = Usuario.anonimo();
  // print(user2);
  String datos = '1,pablito,1344,pmg@iesportada.org,pablo,mota,españa,2005-03-29';
  Usuario user3 = Usuario.toString(datos);
  print(user3);
  print(Base.numInstancias);
}
