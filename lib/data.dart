import 'package:flutter/material.dart';

List<Item> itemList = [
  Item('Hola', 'Pedro', 'Suarez', 20),
  Item('Hello', 'Gian', 'Cardenaz', 21),
  Item('Bonjour', 'Napoleon', 'Bonaparte', 36),
  Item('Bonjour', 'Napoleon', 'Bonaparte', 36),
  Item('Bonjour', 'Napoleon', 'Bonaparte', 36),
  Item('Bonjour', 'Napoleon', 'Bonaparte', 36),
];

const itemHash = {};

class Item {
  String saludo = 'Hola';
  String nombre = 'Pedro';
  String apellido = 'Suarez';
  int edad = 20;

  Item(this.saludo, this.nombre, this.apellido, this.edad);
}




// class name extends StatelessWidget {
//   const name({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
