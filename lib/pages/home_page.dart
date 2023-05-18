import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Número de clicks"),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }
  
 Widget _crearBotones() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: ()=> _botonSuma()
        ),
        Row(
          children: [
            FloatingActionButton(
          child: const Icon(Icons.remove_circle),
          onPressed: ()=> _botonResta()
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: ()=> _botonReset()
        ),
          ],
        )
        
      ],
    ),
  );
 }
 
  _botonSuma() {
    setState(() => contador++);
  }
  _botonResta() {
    setState(() {
      if(contador>0){
        contador--;
      }else{
        contador = contador;
      }
      }
    );
  }
  _botonReset() {
    setState(() {
      if(contador!=0){
        contador=0;
      }
      }
    );
  }

}