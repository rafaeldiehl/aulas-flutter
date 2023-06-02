import 'package:flutter/material.dart';
import 'package:projetobase/aula08/aula08.dart';
import 'package:projetobase/aula09/aula09.dart';
import 'package:projetobase/aula09/view/aula09_dashboard.dart';
import 'package:projetobase/aula09/view/aula09_disciplinas.dart';
import 'package:projetobase/aula10/aula10.dart';
import 'package:projetobase/aula10/view/aula10_future.dart';
import 'package:projetobase/aula12/model/carrinho_model.dart';
import 'package:projetobase/aula12/view/cardapio_view.dart';
import 'package:projetobase/aula12/view/pedido_view.dart';
import 'package:projetobase/aula13/theme/color_schemes.g.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
      initialRoute: '/aula12',
      routes: {
        '/': (context) => const Aula08(),
        '/aula09': (context) => const Aula09(),
        '/aula09_dashboard': (context) => const Aula09Dashboard(),
        '/aula09_disciplinas': (context) => const Aula09Disciplinas(),
        '/aula10': (context) => const Aula10(),
        '/aula10_future': (context) => const Aula10Future(),
        '/aula12': (context) => const CardapioView(),
        '/aula12_pedido': (context) => const PedidoView(),
      },
    );
  }
}

/*  class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} */

