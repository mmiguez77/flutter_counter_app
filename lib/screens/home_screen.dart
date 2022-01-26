import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    const styleText = TextStyle( fontSize: 23 );

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Número de clics', style: styleText),
            Text('10', style: styleText),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () { 

        },        
      ),
    );
  }

}