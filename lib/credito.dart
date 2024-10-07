import 'package:flutter/material.dart';

//Definindo a classe credito que é um widget sem estado
class Credito extends StatelessWidget {
  const Credito({super.key});

  @override
  Widget build(Object context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cartão de Crédito",
            style: TextStyle(fontSize: 24),
          ),
          Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Fatura Fechada",
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "R\$2.123,39",
        style: TextStyle(fontSize: 24),
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        "Vencimento dia 15",
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
      const SizedBox(
        height: 15,
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Renegociar",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      )
    ]);
  }
}
