import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({
    super.key, 
    required this.title
  });
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            Expanded(
              child: Container(
               alignment: Alignmente.center 
              //  color: Colors.amber,
                child: const Text('Layout Superior'),
              ),
            ),
           Expanded(
              flex: 7,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                 Expanded(
                   child: Container(
                    // alignment: Alignment.center 
                    // color: Colors.red,
                    // child: const  Text('Primeira Coluna'),
                    ),
                  ),
                ],
              ),
           ),
                  Expanded(
                    flex: 2, 
                   child: Container(
                     alignment: Alignment.center 
                     decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:  BorderRadius.ciircular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                     ),
                     boxShadow: const [ 
                       Boxshadow(
                        color: Colors.black45,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                     child: const  Text('Meu Aplicativo'),
                    ),
                  ),
                  Expanded(
                   child: Container(
                    // alignment: Alignment.center 
                    // color: Colors.red,
                    // child: const  Text('Terceira Coluna'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center 
               // color: Colors.blue,
                child: const Text('Layout Inferior'),
              ),
            ),
          ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add)
      ),
    }
  }
       
