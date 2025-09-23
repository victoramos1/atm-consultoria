import 'package:flutter/material.dart';
import 'telaempresa.dart';
import 'telacliente.dart';
import 'telacontato.dart';
import 'telaservicos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  mudarTela(String tela){
    switch(tela){
      case "menu_empresa":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaEmpresa())
        );
        break;
      case "menu_servico":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaServicos())
        );
        break;
      case "menu_cliente":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaCLiente())
        );
        break;
      case "menu_contato":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaContato())
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 150, bottom: 50),
            child: Image.asset("imagens/logo.png"),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => mudarTela("menu_empresa"),
                  child: Image.asset("imagens/menu_empresa.png"),
                ),
                GestureDetector(
                  onTap: () => mudarTela("menu_servico"),
                  child: Image.asset("imagens/menu_servico.png"),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => mudarTela("menu_cliente"),
                child: Image.asset("imagens/menu_cliente.png"),
              ),
              GestureDetector(
                onTap: () => mudarTela("menu_contato"),
                child: Image.asset("imagens/menu_contato.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}

