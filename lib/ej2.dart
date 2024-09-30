import 'package:age_calculator/age_calculator.dart';
import 'package:helloworld/base.dart';



class Usuario extends Base { //Se hereda como en java.
  int id;
  String username;
  String password;
  String email;
  String? nombre;
  String? apellidos;
  String? nacionalidad;
  DateTime? nacimiento;
  final DateTime creacion; //final significa que el valor una vez se asigna no se puede cambiar.
  Usuario({
    required this.id, //Ponemos required para que sea obligatorio rellenar ese campo.
    required this.username,
    required this.password,
    required this.email,
    this.nombre,
    this.apellidos,
    this.nacionalidad,
    String? nacimiento,
    Base? context,
  }) : creacion = DateTime.now(), // Con dos puntos podemos asignar a un campo un valor.
  super(context: context) //super para pasar el valor a la clase Base.
  {
    //Controlamos que si el nacimiento es null no lo intente transformar.
    if(nacimiento != null){
      this.nacimiento = DateTime.tryParse(nacimiento);
    }
    else{
      this.nacimiento = null;
    }
  }

  Usuario.anonimo() : //Forma para hacer más de un constructor.
  id = 0, 
  username = "", 
  email = "", 
  password = "", 
  nombre = null, 
  apellidos = null, 
  nacionalidad = null, 
  nacimiento = null, 
  creacion = DateTime.now(),
  super(context: null);
  

  factory Usuario.toString(String datos){ //Sirve para que se puedan enviar los valores de otra forma. En este caso en una cadena separada por comas.
    List<String> pts = datos.split(','); //Se crea una lista y se le devuelve una subcadena con split indicando el separador.
    return Usuario(
      id: int.parse(pts[0].trim()), 
      username: pts[1].trim(), 
      password: pts[2].trim(), 
      email: pts[3].trim(),
      nombre: pts[4].trim(),
      apellidos: pts[5].trim(),
      nacionalidad: pts[6].trim(),
      nacimiento: pts[7].trim(),
      );
  }

  @override //Sobreescribir el metodo tostring.
  String toString() => 'Usuario(\nId: $id\nUsername: $username\nPassword: $password\nEmail: $email\nNombre: $nombre\nApellidos: $apellidos\nNacionalidad: $nacionalidad\nNacimiento: $nacimiento\nEdad: $edad\n)';

  String get nombreCompleto { //Getter del nombre concatenado.
    return '$nombre $apellidos';
  }
  int get edad{ //Getter de la edad controlando si la fecha de nacimiento es nula.
    if(nacimiento != null){
        DateDuration duration = AgeCalculator.age(nacimiento!);
        return duration.years;
    }
    else{
      return 0;
    }
  }
  Usuario copyWith({
    int? id,
    String? username,
    String? password,
    String? email,
    String? nombre,
    String? apellidos,
    String? nacionalidad,
    DateTime? nacimiento,
  }) {
    return Usuario(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      nombre: nombre ?? this.nombre,
      apellidos: apellidos ?? this.apellidos,
      nacionalidad: nacionalidad ?? this.nacionalidad,
    );
  }
}
