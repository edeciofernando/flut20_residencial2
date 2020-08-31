import 'package:flutter/material.dart';
import 'package:residencial2/pages/menu_drawer.dart';
import 'package:residencial2/pages/plantas_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Residencial Avenida'),
      ),
      drawer: MenuDrawer(),
      body: _body(context),
    );
  }

  Column _body(BuildContext context) {
    return Column(
      children: <Widget>[
        _titulo(),
        _fotos(),
        _botoes(context),
      ],
    );
  }

  Container _titulo() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Center(
        child: Text(
          'Visita online',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  Container _fotos() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 300,
      child: PageView(
        children: <Widget>[
          _foto('foto1.jpg'),
          _foto('foto2.jpg'),
          _foto('foto3.jpg'),
          _foto('foto4.jpg'),
          _foto('foto5.jpg'),
        ],
      ),
    );
  }

  Image _foto(String path) {
    return Image.asset(
      'assets/images/' + path,
      fit: BoxFit.contain,
    );
  }

  Column _botoes(BuildContext context) {
    return Column(
      children: <Widget>[
        _botao('Casas com 2 ou 3 dorm.', _mostraPlantas, context),
        _botao('Planos de Pagamento', _mostraPlanos, context),
        _botao('Registre seu Interesse', _registreInteresse, context),
      ],
    );
  }

  RaisedButton _botao(String texto, Function telaNav, BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
// sem parâmetros, pode chamar direto
//      onPressed: telaNav,
      onPressed: () {
        telaNav(context);
      },
    );
  }

  _mostraPlantas(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlantasPage()),
    );
  }

  _mostraPlanos(BuildContext context) {
    print('Planos');
  }

  _registreInteresse(BuildContext context) {
    print('Interessado');
  }
}
