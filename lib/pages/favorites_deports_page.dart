import 'package:flutter/material.dart';
import 'package:sliderexample/model/deport_model.dart';
import 'package:sliderexample/widget/item_deport_widget.dart';
import 'package:sliderexample/widget/titulo_widget.dart';

class FavoritesDeportsPage extends StatefulWidget {
  const FavoritesDeportsPage({super.key});

  @override
  State<FavoritesDeportsPage> createState() => _FavoritesDeportsPageState();
}

class _FavoritesDeportsPageState extends State<FavoritesDeportsPage> {
  // List<Map<String, dynamic>> deportList = [
  //   {"name": "Futbol", "isfavorite": false},
  //   {"name": "Golf", "isfavorite": false},
  //   {"name": "Voibol", "isfavorite": false},
  //   {"name": "Tennis", "isfavorite": false},
  //   {"name": "Box", "isfavorite": false},
  //   {"name": "Baloncesto", "isfavorite": false},
  //   {"name": "Karate", "isfavorite": false},
  // ];
  List<DeportModel> favoriteDeporList = [];

  // List<Map<String, dynamic>> favoriteDeporList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites Deports App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TituloWidget("Cuales son tus deportes favoritos"),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < deportModelList.length; i++)
                    ItemDportWidget(deportModelList[i], () {
                      print(deportModelList[i].name);
                      //widget.deporte["isfavorite"] = !widget.deporte["isfavorite"];
                      deportModelList[i].isFavorite =
                          !deportModelList[i].isFavorite;
                      if (deportModelList[i].isFavorite == true) {
                        favoriteDeporList.add(deportModelList[i]);
                        setState(() {});
                      } else {
                        favoriteDeporList.remove(deportModelList[i]);
                      }
                      setState(() {});
                      // _containerColor = Colors.orange.shade200;
                    }, false)
                ],
              ),
            ),
            const Divider(
              thickness: 3,
              color: Colors.black,
              height: 48,
            ),
            TituloWidget("Mis deportes favoritos son:"),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 3, color: Colors.black)),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < favoriteDeporList.length; i++)
                    ItemDportWidget(favoriteDeporList[i], () {
                      favoriteDeporList[i].isFavorite = false;
                      favoriteDeporList.remove(favoriteDeporList[i]);

                      setState(() {});
                    }, true)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
