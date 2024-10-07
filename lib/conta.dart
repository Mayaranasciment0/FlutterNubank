import 'package:flutter/material.dart';

// Definindo a classe Conta, que é um widget sem estado
class Conta extends StatelessWidget {
  const Conta({super.key});

  // O método build é onde construímos a interface do widget.
  @override
  Widget build(Object context) {
    // Retornamos uma coluna que organiza todos os elementos verticalmente.
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.start, // Alinha os filhos no início da coluna.
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha os filhos à esquerda.
      children: [
        // Início da linha que contém o título "Conta" e um ícone de seta.
        const Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Distribui espaço entre os filhos.
          children: [
            Text(
              "Conta",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight
                      .bold), // Título "Conta", em negrito e com um tamanho de fonte maior.
            ),

            Icon(Icons.arrow_forward_ios_outlined), // Um ícone de seta.
          ],
        ),
        const SizedBox(
            height: 10), // Um espaço vertical de 10 pixels abaixo do título.
        const Text(
          "R\$1000,00", // Exibe o saldo da conta, formatado como moeda.
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold), // Estilo do saldo.
        ),
        const SizedBox(height: 30), // Um espaço de 30 pixels abaixo do saldo.
        Row(
          // Linha que contém botões para diferentes ações financeiras.
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Distribui os botões uniformemente.
          children: [
            // Seção do botão "Pix".
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll<Size>(Size.fromRadius(
                      30)), // Define um tamanho fixo para o botão.
                ),
                icon: const Icon(Icons.pix_outlined), // Ícone do botão Pix.
                onPressed: () {
                  // nenhuma ação foi declarada quando o botão for pressionado
                },
              ),
              const Text("Pix",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // Rótulo do botão.
            ]),
            // Seção do botão "Pagamentos".
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.money), // Ícone do botão Pagamentos.
                iconSize: 30,
                color: Colors.black, // Define a cor do ícone.
                onPressed: () {
                  // nenhuma ação foi declarada quando o botão for pressionado
                },
              ),
              const Text("Pagamentos",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // Rótulo do botão.
            ]),
            // Seção do botão "QRcode".
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.qr_code, size: 30), // Tamanho do ícone.
                onPressed: () {
                  // Ação a ser realizada ao pressionar o botão.
                },
              ),
              const Text("QRcode",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // Rótulo do botão.
            ]),
            // Seção do botão "Transferir".
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.attach_money,
                    size: 30), // Tamanho do ícone.
                onPressed: () {
                  // Ação a ser realizada ao pressionar o botão.
                },
              ),
              const Text("Transferir",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // Rótulo do botão.
            ]),
          ],
        ),
        // Um espaço de 30 pixels abaixo da linha de botões.
        const SizedBox(height: 30),

        // Um Card que contém uma lista de cartões.
        const Card(
          child: ListTile(
            title: Text("Meus Cartões",
                style: TextStyle(
                    fontWeight: FontWeight.bold)), // Título em negrito.
            leading: Icon(Icons.credit_card), // Ícone à esquerda do título.
          ),
        ),
        // Um espaço de 30 pixels abaixo do Card.
        const SizedBox(height: 30),

        // Outro Card com uma mensagem sobre caixinhas de dinheiro.
        Card(
          child: Container(
              padding: const EdgeInsets.all(10), // Padding dentro do Card.
              child: const ListTile(
                title: Text("Guarde seu dinheiro em caixinhas",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(
                            0xFFBA4DE3))), // Título com cor personalizada.
                subtitle: Text(
                    "Acessando a área de planejamento"), // Subtítulo do Card.
              )),
        )
      ],
    );
  }
}
