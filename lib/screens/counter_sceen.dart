import 'package:flutter/material.dart';


class CounterSceen extends StatefulWidget {
  
  const CounterSceen({Key? key}) : super(key: key);

  @override
  State<CounterSceen> createState() => _CounterSceenState();
}

class _CounterSceenState extends State<CounterSceen> {
  
  int counter = 0;

  void increment(){
    setState(() {counter++;});
  }

  void decrease(){
    setState(() {counter--;});
  }

  void reset() {
    setState(() {counter = 0;});
  }
    
  @override
  Widget build(BuildContext context) {

    const styleText = TextStyle( fontSize: 23 );

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterSceen'),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de clics', style: styleText),
            Text('$counter', style: styleText),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        incrementFn: increment,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function incrementFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.incrementFn,
    required this.decreaseFn,
    required this.resetFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        FloatingActionButton(
          child: const Icon( Icons.remove ),
          onPressed: () => decreaseFn()
        ),
        
        FloatingActionButton(
          child: const Icon( Icons.exposure_zero ),
          onPressed: () => resetFn()
        ),
        
        FloatingActionButton(
          child: const Icon( Icons.add ),
          onPressed: () => incrementFn()
        ),
      ],
    );
  }
}