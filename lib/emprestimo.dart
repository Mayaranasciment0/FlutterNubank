import 'package:flutter/material.dart';

//Definido a classe Emprestimo que é um widget sem estado.
class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  // Método build que constrói a interface do widget.
  @override
  Widget build(Object context) {
    return const Column(
      // Alinhamento dos filhos horizontal
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Um Row que contém um título e um ícone.
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Texto que representa o título do widget.
            Text(
              "Empréstimo",
              style: TextStyle(fontSize: 24), // Tamanho da fonte.
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // Ícone de seta para a direita.
          ],
        ),
        // Espaçamento vertical entre os elementos.
        SizedBox(
          height: 10,
        ),
        Text(
          // Texto que mostra o status do empréstimo
          "Tudo certo! Você está em dia.",
          style: TextStyle(
              fontSize: 18, color: Colors.black54), // Tamanho e cor da fonte.
        ),
      ],
    );
  }
}
