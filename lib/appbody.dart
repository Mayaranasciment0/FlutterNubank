import 'package:flutter/material.dart';
import "package:aulaflutter/conta.dart";
import 'package:aulaflutter/credito.dart';
import 'package:aulaflutter/descubra.dart';
import 'package:aulaflutter/emprestimo.dart';

// Definindo a classe AppBody, que é um widget sem estado.
class AppBody extends StatelessWidget {
  const AppBody({super.key});

  // O método build é onde construímos a interface do widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      // Retornamos um Container que servirá como o contêiner principal do layout.
      margin:
          const EdgeInsets.all(15), // Margem de 15 pixels ao redor do Container
      child: ListView(
        // Permite a rolagem de conteúdo
        padding: EdgeInsets.all(
            16), // Adiciona um padding de 16 pixels dentro do ListView.
        children: const [
          Conta(), // Chamando a seção de conta.
          Padding(
            // Adicionamos um Padding com uma linha de separação entre os widgets.
            padding: EdgeInsets.only(
                top: 30,
                bottom:
                    30), // Espaçamento vertical ao redor da linha de separação.
            child:
                Divider(height: 1), // Linha de separação com altura de 1 pixel.
          ),
          Credito(), // Chamando a seção de crédito.
          Padding(
            // Outro Divider para separar seções.
            padding: EdgeInsets.only(
                top: 30,
                bottom: 30), // Espaçamento vertical ao redor do Divider.
            child: Divider(height: 1), // Linha de separação.
          ),
          Emprestimo(), // Widget que representa a seção de empréstimo.
          Padding(
            padding: EdgeInsets.only(
                top: 30,
                bottom: 30), // Espaçamento vertical ao redor do Divider.
            child: Divider(height: 1), // Linha de separação.
          ),
          Descubra() // Chamando a seção de "Descubra mais".
        ],
      ),
    );
  }
}
