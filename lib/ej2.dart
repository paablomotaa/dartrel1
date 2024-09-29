import 'package:age_calculator/age_calculator.dart';



class Usuario {
  int id;
  String username;
  String password;
  String email;
  String? nombre;
  String? apellidos;
  String? nacionalidad;
  DateTime? nacimiento;
  final DateTime creacion;
  Usuario({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    this.nombre,
    this.apellidos,
    this.nacionalidad,
    String? nacimiento,
  }) : creacion = DateTime.now()
  {
    if(nacimiento != null){
      this.nacimiento = DateTime.tryParse(nacimiento);
    }
    else{
      this.nacimiento = null;
    }
  }

  Usuario.anonimo() : 
  id = 0, 
  username = "", 
  email = "", 
  password = "", 
  nombre = null, 
  apellidos = null, 
  nacionalidad = null, 
  nacimiento = null, 
  creacion = DateTime.now();

  factory Usuario.toString(String datos){
    List<String> pts = datos.split(',');
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

  @override
  String toString() => 'Usuario(\nId: $id\nUsername: $username\nPassword: $password\nEmail: $email\nNombre: $nombre\nApellidos: $apellidos\nNacionalidad: $nacionalidad\nNacimiento: $nacimiento\nEdad: $edad\n)';

  String get nombreCompleto {
    return '$nombre $apellidos';
  }
  int get edad{
    if(nacimiento != null){
        DateDuration duration = AgeCalculator.age(nacimiento!);
        return duration.years;
    }
    else{
      return 0;
    }
  }
}
