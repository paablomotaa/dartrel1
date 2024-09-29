import 'dart:io';
import 'dart:math';


void adivinaElNumero(int max){
  print('¡Bienvenido! Esto es ADIVINA EL NÚMERO, el juego en el que tendrás que adivinar el número \n que estoy pensando. Una pista: El número está comprendido entre 0 y 1000. ¿Cuál será?');
  var numrnd = Random().nextInt(max);
  String valor;
  bool salida = false;
  int contador = 1;
  print('$numrnd');
  print('Intento $contador: ');
  do{
    valor = stdin.readLineSync() ?? "0";
    int numact = int.tryParse(valor) ?? 0;
    if(numact == numrnd){
        print('SI!! ESE ES EL NÚMERO.');
        print('Descubrirlo te ha llevado $contador intentos');
        print('¿Quieres jugar de nuevo? (s/n)');
        valor = stdin.readLineSync() ?? 'n';
        if(valor == 's'){
          numrnd = Random().nextInt(max);
          print('$numrnd');
          contador = 1;
          print('Intento $contador: ');
        }
        else{
          salida = true;
        }   
    }
    else{
      contador++;
      if(numact > numrnd){
        print('Te has pasado. Intento $contador: ');
      }
      else{
        print('No llegas. Intento $contador: ');
      }
    }
  } while(salida != true);
}
