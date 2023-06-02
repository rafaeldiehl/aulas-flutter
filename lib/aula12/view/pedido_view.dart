import 'package:flutter/material.dart';
import 'package:projetobase/aula12/model/carrinho_model.dart';
import 'package:projetobase/aula13/widgets/card_carrinho.dart';
import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: carrinho.numProdutos,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
                child: CardCarrinho(
                  nome: carrinho.produtos[index].nome,
                  preco: carrinho.produtos[index].preco,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total R\$ ${carrinho.vlTotal.toStringAsFixed(2)}',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
