import 'package:flutter/material.dart';

class TipoLogin extends StatefulWidget {
  const TipoLogin({
    super.key,
    required this.selectedList,
    required this.alterarTipoLogin,
  });

  final List<bool> selectedList;
  final Function(int) alterarTipoLogin;

  @override
  State<TipoLogin> createState() => _TipoLoginState();
}

class _TipoLoginState extends State<TipoLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Logar com: ',
        ),
        const SizedBox(
          width: 8,
        ),
        ToggleButtons(
            borderRadius: BorderRadius.circular(10),
            isSelected: widget.selectedList,
            onPressed: widget.alterarTipoLogin,
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
    );
  }
}
