import 'package:flutter/material.dart';
import 'package:aulaflutter/appbody.dart';

// Função principal que inicia o aplicativo com MyApp.
void main() => runApp(const MyApp());

// Define a classe MyApp como um widget sem estado.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // O método build é onde construímos a interface do widget.
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, // Remove a faixa de debug do canto superior direito.
        title: 'Nubank', // Define o título do aplicativo.
        home: Scaffold(
            // Scaffold fornece uma estrutura básica para o layout.
            backgroundColor:
                Colors.white, // Define a cor de fundo do Scaffold como branco.
            appBar: AppBar(
              // Cria a barra de aplicativo na parte superior.
              backgroundColor:
                  Color(0xFFBA4DE3), // Define a cor de fundo da AppBar.
              actions: [
                // Lista de widgets de ação na AppBar.
                IconButton(
                  // Botão de ícone para ações.
                  style: ButtonStyle(
                    // Estilo do botão.
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xffa444ca)), // Define a cor de fundo do botão.
                  ),
                  icon: const Icon(
                      Icons.visibility_outlined), // Ícone de visibilidade.
                  onPressed:
                      () {}, // Ação a ser realizada quando pressionado (vazio por enquanto).
                ),
                IconButton(
                  // Outro botão de ícone.
                  icon: const Icon(
                      Icons.question_mark_rounded), // Ícone de ajuda.
                  onPressed: () {}, // Ação ao pressionar (vazio).
                ),
                IconButton(
                  // Mais um botão de ícone.
                  icon: const Icon(
                      Icons.mark_email_read_outlined), // Ícone de email.
                  onPressed: () {}, // Ação ao pressionar (vazio).
                ),
              ],
              leading: IconButton(
                // Botão de ícone na parte esquerda da AppBar.
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xFFBA4DE3))), // Cor de fundo do botão.
                icon: const Icon(Icons.person_outline,
                    color: Colors.white70), // Ícone de perfil.
                color: Colors.white70, // Define a cor do ícone.
                onPressed: () {}, // Ação ao pressionar (vazio).
              ),
            ),
            body:
                const AppBody())); // Corpo da Scaffold, que chama o widget AppBody.
  }
}
