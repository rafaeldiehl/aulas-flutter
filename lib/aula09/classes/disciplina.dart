class Disciplina {
  late final String codigo;
  late final String nome;
  late final String professor;

  Disciplina({
    required this.codigo,
    required this.nome,
    required this.professor,
  });

  static List<Disciplina> gerarDisciplinas() {
    return [
      Disciplina(
        codigo: 'PDMDE',
        nome: 'Programação para Dispositivos Móveis',
        professor: 'Antonio Dourado',
      ),
      Disciplina(
        codigo: 'PL1D5',
        nome: 'Projeto Integrado I',
        professor: 'Giorjety Licorini Dias',
      ),
      Disciplina(
        codigo: 'CBGD5',
        nome: 'Contabilidade Básica e Gerência Financeira',
        professor: 'Eline Gomes de Oliveira Zioli',
      ),
      Disciplina(
        codigo: 'AGRD5',
        nome: 'Administração de Redes',
        professor: 'Newton Mitsushigue Kamimura',
      ),
      Disciplina(
        codigo: 'TP2D5',
        nome: 'Técnicas de Programação II',
        professor: 'Felipe Alexandre Pazinatto',
      ),
      Disciplina(
        codigo: 'GPRD5',
        nome: 'Gestão de Projetos',
        professor: 'Luiz Egidio Costa Cunha',
      ),
    ];
  }
}
