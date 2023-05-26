class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });

  static List<Produto> gerarLista() {
    return [
      Produto(id: 1, nome: "Produto 1", preco: 15.50),
      Produto(id: 2, nome: "Produto 2", preco: 0.50),
      Produto(id: 3, nome: "Produto 3", preco: 10.00),
      Produto(id: 4, nome: "Produto 4", preco: 19.00),
      Produto(id: 5, nome: "Produto 5", preco: 8.75),
      Produto(id: 6, nome: "Produto 6", preco: 5.20),
      Produto(id: 7, nome: "Produto 7", preco: 20.00),
      Produto(id: 8, nome: "Produto 8", preco: 6.00),
      Produto(id: 9, nome: "Produto 9", preco: 11.40),
      Produto(id: 10, nome: "Produto 10", preco: 16.00),
      Produto(id: 11, nome: "Produto 11", preco: 3.50),
      Produto(id: 12, nome: "Produto 12", preco: 1.30),
    ];
  }
}
