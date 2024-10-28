import 'package:flutter/material.dart';
import 'definirSenha.dart';
import 'copiarQuestionario.dart';
import 'ExcluirQuestionario.dart';

class GerenciarQuestionario extends StatefulWidget {
  @override
  _GerenciarQuestionarioState createState() => _GerenciarQuestionarioState();
}

class _GerenciarQuestionarioState extends State<GerenciarQuestionario> {
  List<bool> _isHoveringList = List<bool>.filled(9, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar questionários'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[800]!, Colors.purple[600]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildGridItem(0, Icons.lock, 'Definir Senha', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefinirSenha()),
              );
            }),
            _buildGridItem(1, Icons.copy, 'Copiar Questionário', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CopiarQuestionario()),
              );
            }),
            _buildGridItem(2, Icons.delete, 'Excluir Questionário', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExcluirQuestionario()),
              ); // Adicionei o ponto e vírgula aqui
            }),
            _buildGridItem(3, Icons.link, 'Gerar Link', () {
              // referenciar
            }),
            _buildGridItem(4, Icons.notifications, 'Enviar Notificação', () {
              // Referenciar
            }),
            _buildGridItem(5, Icons.play_circle_fill, 'Simular Questionário', () {
              // referenciar
            }),
            _buildGridItem(6, Icons.list, 'Escolher Tipo', () {
              // referenciar
            }),
            _buildGridItem(7, Icons.visibility, 'Visualizar questionários', () {
              // referenciar
            }),
            _buildGridItem(8, Icons.publish, 'Definir Publicação', () {
              // referenciar
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(int index, IconData icon, String title, VoidCallback onTap) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHoveringList[index] = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHoveringList[index] = false;
        });
      },
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 4,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: _isHoveringList[index] ? Colors.white : Colors.blue[800],
              ),
              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
