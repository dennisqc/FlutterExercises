import 'package:flutter/material.dart';

class FavoritesDeportsPage extends StatefulWidget {
  const FavoritesDeportsPage({super.key});

  @override
  State<FavoritesDeportsPage> createState() => _FavoritesDeportsPageState();
}

class _FavoritesDeportsPageState extends State<FavoritesDeportsPage> {
  List<Map<String, dynamic>> deportList = [
    {"name": "Futbol", "isfavorite": false},
    {"name": "Golf", "isfavorite": false},
    {"name": "Voibol", "isfavorite": false},
    {"name": "Tennis", "isfavorite": false},
    {"name": "Box", "isfavorite": false},
    {"name": "Baloncesto", "isfavorite": false},
    {"name": "Karate", "isfavorite": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Deports App"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < deportList.length; i++)
                  ItemDportWidget(deportList[i])
              ],
            ),
            
            Divider(
              thickness: 3,
              color: Colors.black,
              height: 48,
            ),
            TituloWidget("Mis deportes favoritos son:")
          ],
        ),
      ),
    );
  }
}

class TituloWidget extends StatelessWidget {
  String texto;
  TituloWidget(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: 25),
    );
  }
}

class ItemDportWidget extends StatefulWidget {
  Map<String, dynamic> deporte;

  ItemDportWidget(this.deporte);

  @override
  State<ItemDportWidget> createState() => _ItemDportWidgetState();
}

class _ItemDportWidgetState extends State<ItemDportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(widget.deporte["name"]);
          widget.deporte["isfavorite"] = true;
          setState(() {
            
          });
          // _containerColor = Colors.orange.shade200;
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: widget.deporte["isfavorite"]
                  ? Colors.orange.shade200
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange, width: 2)),
          child: Text(
            widget.deporte["name"],
            style: TextStyle(fontSize: 18),
          ),
        ));
  }
}
