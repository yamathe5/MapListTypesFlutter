import 'package:flutter/material.dart';

List<Item> itemList = [
  Item(
      'Inauguración Feria EXPOCOBRE 2023',
      'Palabras de Bienvenida: CEO - Director Gerente de InterMet - Ing. Alfredo Olaya Zavala Cocktail y Bailes Típicos',
      '09:00 - 12:00',
      5,
      'assets/img/1.jpg'),
  Item('La flotación, Ingeniería o Arte: Herramientas evolutivas',
      'Juan Anes - FLOTTEC LLC', 'Suarez', 5, 'assets/img/1.jpg'),
  Item(
      'Recorrido Oficia a la Exhibición ',
      'Recorrido Oficia a la Exhibición - 1ra Feria Internacional EXPOCOBRE 2023',
      '12:00 - 13:00',
      5,
      'assets/img/2.jpg'),
  Item('ALMUERZO EMPRESARIAL', 'ALMUERZO EMPRESARIAL', '13:00 - 15:00', 5,
      'assets/img/3.jpg'),
  Item(
      'Disponible: Tema de Ponencia - Conferencia Magistral 1',
      'Disponible: Tema de Ponencia - Conferencia Magistral 1',
      '15:00 - 15:30',
      5,
      'assets/img/5.webp'),
  Item(
      'Disponible: Tema de Ponencia - Conferencia Magistral 1',
      'Disponible: Tema de Ponencia - Conferencia Magistral 1',
      '15:30 - 16:00',
      5,
      'assets/img/5.webp'),
];

class Item {
  String titulo = 'Titulo';
  String descripcion =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy ';
  String inicio = '00.00';
  String imagen = '';
  int estrellas = 5;

  Item(this.titulo, this.descripcion, this.inicio, this.estrellas, this.imagen);
}
