import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///espacio para definicion de variables
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Universidad De Nariño"),
        elevation: 5.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Realizado por:Miguel Angel Florez"),
          Text("Presentado a :Ing.Jorge collazos"),
          Text("Numeros"),
          Text("$contador"),
        ],
      )),
      floatingActionButton: _fab(),
    );
  }

  Widget _fab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: Text("Cero"),
          //child: Icon(Icons.exposure_zero),
          onPressed: () {
            contador = 0;
            setState(() {});
            print(contador);
          },
        ),
        FloatingActionButton(
          child: Text("restar"),
          // child: Icon(Icons.removes),
          onPressed: () {
            contador--;
            setState(() {});
            print(contador);
          },
        ),
        FloatingActionButton(
          child: Text(" sumar "), //  child: Icon(Icons.add),
          onPressed: () {
            contador++;
            setState(() {});
            print(contador);
          },
        ),
      ],
    );
  }
}
