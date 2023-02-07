import 'dart:html';

import 'package:flutter/material.dart';
import 'package:maplist/data.dart';

class MapListVeew extends StatelessWidget {
  const MapListVeew({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Text('Stands'),
            const SizedBox(height: 10),
            Container(
              height: 180,
              child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        color: Colors.red,
                        width: 300,
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
                          'Holaaaaaaaaaaa',
                        ),
                      )),
            ),
            const SizedBox(height: 20),
            const Text('Charlas magistrales'),
            const SizedBox(height: 10),
            Container(
              height: 180,
              child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        color: Colors.red,
                        width: 300,
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
                          'Holaaaaaaaaaaa',
                        ),
                      )),
            ),
            Container(
              color: Colors.red,
              width: 300,
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                'Holaaaaaaaaaaa',
              ),
            ),
            Container(
              color: Colors.red,
              width: 300,
              height: 180,
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                'Holaaaaaaaaaaa',
              ),
            ),
            Container(
              color: Colors.red,
              width: 300,
              height: 180,
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                'Holaaaaaaaaaaa',
              ),
            ),
            Container(
              color: Colors.red,
              width: 300,
              height: 180,
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                'Holaaaaaaaaaaa',
              ),
            ),
          ],
        ));
  }
}
