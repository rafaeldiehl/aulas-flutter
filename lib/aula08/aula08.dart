import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  bool _senhaEscondida = true;
  late final TextEditingController _userController;
  late final TextEditingController _senhaController;
  List<bool> _selectedList = [true, false, false];

  @override
  void initState() {
    _userController = TextEditingController();
    _senhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _alterarVisibilidade() {
    setState(() {
      _senhaEscondida = !_senhaEscondida;
    });
  }

  void _alterarTipoLogin(int index) {
    setState(() {
      _selectedList =
          _selectedList.mapIndexed((pos, element) => pos == index).toList();
    });
  }

  void _testarCampos() {
    debugPrint('Usuário: ${_userController.text}');
    debugPrint('Senha: ${_senhaController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Logar com'),
                  const SizedBox(width: 8),
                  ToggleButtons(
                      borderRadius: BorderRadius.circular(10),
                      isSelected: _selectedList,
                      onPressed: _alterarTipoLogin,
                      children: const [
                        // TextButton(onPressed: () {}, child: const Text('E-mail'))
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('E-mail'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(' CPF '),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(' Telefone '),
                        ),
                      ])
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _userController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    label: Text('E-mail'),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _senhaController,
                obscureText: _senhaEscondida,
                enableSuggestions: false,
                // obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: _alterarVisibilidade,
                        icon: Icon(_senhaEscondida
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    label: const Text('Senha'),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.75, 50)),
                  onPressed: _testarCampos,
                  child: const Text('Login'))
            ],
          )),
    ));
  }
}
