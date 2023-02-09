import 'dart:html';

import 'package:flutter/material.dart';
import 'package:maplist/data.dart';
import './card.dart';

class MapListVeew extends StatelessWidget {
  const MapListVeew({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Stands',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CardItem(
                            titulo: itemList[index].titulo,
                            descripcion: itemList[index].descripcion,
                            estrellas: itemList[index].estrellas,
                            imagen: itemList[index].imagen,
                            inicio: itemList[index].inicio,
                          ),
                        ),
                      )),
            ),
            const SizedBox(height: 20),
            const Text(
              'Charlas magistrales',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CardItem(
                          titulo: itemList[index].titulo,
                          descripcion: itemList[index].descripcion,
                          estrellas: itemList[index].estrellas,
                          imagen: itemList[index].imagen,
                          inicio: itemList[index].inicio,
                        ),
                      ))),
            ),
            const Text(
              'Vista amplia (ejemplo)',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Noto Sans CJK SC'),
            ),
            const SizedBox(height: 10),
            IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                icon: const Icon(Icons.search)),
            ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: itemList.length,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: CardItem(
                        titulo: itemList[index].titulo,
                        descripcion: itemList[index].descripcion,
                        estrellas: itemList[index].estrellas,
                        imagen: itemList[index].imagen,
                        inicio: itemList[index].inicio,
                      ),
                    ))),
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana',
    'Pear',
    'Watermelos',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
