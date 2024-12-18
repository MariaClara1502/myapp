// Importa o pacote principal do Flutter, que contém os widgets básicos e outras funcionalidades essenciais.
import 'package:flutter/material.dart';

// Função principal que inicia o aplicativo.
void main() {
  runApp(const MyApp()); // Executa o widget raiz do aplicativo, neste caso, MyApp.
}

// Define um widget chamado MyApp que é imutável (stateless).
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Construtor com uma chave opcional para controle de estado no Flutter.

  @override
  Widget build(BuildContext context) {
    // Define o widget principal do aplicativo.
    return MaterialApp(
      title: 'Flutter Demo', // Define o título do aplicativo.
      theme: ThemeData(
        // Define o tema visual do aplicativo.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 62, 183, 58)), // Gera um esquema de cores baseado na cor deepPurple.
        useMaterial3: true, // Ativa o estilo Material Design 3.
      ),
      home: const MyHomePage(title: 'Primeiro Programa Flutter'), // Define a página inicial do aplicativo.
    );
  }
}

// Define um widget de estado mutável (stateful) chamado MyHomePage.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); // Construtor que aceita um título obrigatório.

  final String title; // Propriedade que armazena o título da página.

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Cria o estado associado a este widget.
}

// Classe que gerencia o estado do widget MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Variável para armazenar o contador.

  // Método que incrementa o valor do contador.
  void _incrementCounter() {
    setState(() {
      // Notifica o Flutter que o estado mudou, atualizando a interface.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Constrói a interface gráfica para este widget.
    return Scaffold(
      appBar: AppBar(
        // Define a barra de aplicativos no topo da tela.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Usa uma cor baseada no esquema de cores definido no tema.
        title: Text(widget.title), // Exibe o título passado para o widget MyHomePage.
      ),
      body: Center(
        // Centraliza o conteúdo na tela.
        child: Column(
          // Organiza os widgets em uma coluna (verticalmente).
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os widgets dentro da coluna.
          children: <Widget>[
            const Text(
              // Texto fixo que explica a funcionalidade do aplicativo.
              'Meu primeiro Programa Interativo, clique no + para aumentar a pontuação:',
            ),
            Text(
              '$_counter', // Exibe o valor atual do contador.
              style: Theme.of(context).textTheme.headlineMedium, // Aplica o estilo do tema para o texto.
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Botão flutuante que incrementa o contador ao ser pressionado.
        onPressed: _incrementCounter, // Chama o método _incrementCounter ao pressionar o botão.
        tooltip: 'Increment', // Texto descritivo exibido ao passar o cursor sobre o botão.
        child: const Icon(Icons.add), // Ícone exibido no botão (um "+" neste caso).
      ), 
    );
  }
}