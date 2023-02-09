import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String inicio;
  final int estrellas;
  final String imagen;
  const CardItem(
      {super.key,
      required this.titulo,
      required this.descripcion,
      required this.inicio,
      required this.estrellas,
      required this.imagen});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,

      // height: 350,
      // margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  // border: Border.all(width: 5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50)), //<-- SEE HERE
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    imagen,
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                titulo,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto Sans CJK SC'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Text(descripcion),
            ),
          ],
        ),
      ),
    );
  }
}
