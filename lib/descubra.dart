import 'package:flutter/material.dart';

// Definido uma classe chamada Descubra, que é um widget sem estado.
class Descubra extends StatelessWidget {
  const Descubra({super.key});

  @override
  Widget build(BuildContext context) {
    // Retornamos uma coluna que organiza os elementos verticalmente.
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha os filhos à esquerda.
      children: [
        // Começamos com uma linha (Row) que contém um título e um ícone de seta.
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Distribui espaço entre os filhos.
          children: [
            Text(
              "Descubra mais",
              style:
                  TextStyle(fontSize: 24), // Estilo do texto "Descubra mais".
            ),
            // Um ícone de seta que sugere.
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
        // Um espaço vertical de 10 pixels entre o título e o próximo elemento.
        SizedBox(height: 10),

        // GestureDetector permite detectar toques no Card.
        GestureDetector(
          onTap: () {
            // nenhuma ação definida caso o card for tocado.
          },
          child: Card(
            elevation: 5, // Adiciona uma sombra ao Card.
            margin: EdgeInsets.all(10), // Margem de 10 pixels ao redor do Card.
            child: SingleChildScrollView(
              // Permite que o conteúdo do Card role caso seja maior que a tela.
              child: Column(
                children: [
                  // Exibindo a imagem "seguroDeVida" no descubra mais.
                  Image.asset(
                    'assets/images/seguroDeVida.png',
                    fit:
                        BoxFit.fill, // A imagem preencherá o espaço disponível.
                  ),
                  // Um espaço de 10 pixels abaixo da imagem.
                  SizedBox(height: 10),

                  // Um Padding para adicionar espaçamento interno ao conteúdo do Card.
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Alinha o texto à esquerda.
                      children: [
                        // Título do serviço: "Seguro de Vida", com estilo em negrito.
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "Seguro de Vida",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Um espaço de 10 pixels abaixo do título.
                        SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "Cuide bem de quem você ama de um jeito simples",
                          ),
                        ),
                        // Um espaço de 15 pixels abaixo do texto.
                        SizedBox(height: 15),

                        // Um botão "Conhecer" que o usuário pode clicar para saber mais.
                        Padding(
                          padding: EdgeInsets.only(right: 5.0, bottom: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // nenhuma ação definida caso o card for tocado
                            },
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(
                                  4.0), // Sombra do botão.
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffa444ca), // Cor de fundo do botão.
                              ),
                            ),
                            child: const Text(
                              "Conhecer",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors
                                      .white), // Estilo do texto do botão.
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
