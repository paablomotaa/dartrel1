class UsuarioNoMutable{ //Clase usuario donde no se puede cambiar ningun valor.
    final int id;
    final String username;
    final String password;
    final String email;
    final String? nombre;
    final String? apellidos;
    final String? nacionalidad;
    final DateTime? nacimiento;
    const UsuarioNoMutable._({ //Para que el constructor sea constante he tenido que ponerle final a todos los campos || ._ para que sea privado
      required this.id,
      required this.username,
      required this.password,
      required this.email,
      this.nombre,
      this.apellidos,
      this.nacionalidad,
      this.nacimiento
    });
    
    factory UsuarioNoMutable({  //constructor factory como el anterior incluyendo el nacimiento.
    required int id,
    required String username,
    required String password,
    required String email,
    String? nombre,
    String? apellidos,
    String? nacionalidad,
    String? nacimiento,
  }) {
    DateTime? nacimiento1 = nacimiento != null ? DateTime.tryParse(nacimiento) : null; //Controlar null de forma más limpia. (Igual que en C#).
    return UsuarioNoMutable._(
      id: id,
      username: username,
      password: password,
      email: email,
      nombre: nombre,
      apellidos: apellidos,
      nacionalidad: nacionalidad,
      nacimiento: nacimiento1,
    );
    }
    @override
    String toString() => 'Usuario(\nId: $id\nUsername: $username\nPassword: $password\nEmail: $email\nNombre: $nombre\nApellidos: $apellidos\nNacionalidad: $nacionalidad\n)';

    String get nombreCompleto{
      return '$nombre $apellidos';
    }
    UsuarioNoMutable copyWith({ //Metodo de copiar. Recoge todos los valores de cada campo y los copia a otro objeto. Si el mismo es null devolverá el valor que ya tenía este por defecto.
    int? id,
    String? username,
    String? password,
    String? email,
    String? nombre,
    String? apellidos,
    String? nacionalidad,
    DateTime? nacimiento,
  }) {
    return UsuarioNoMutable(
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