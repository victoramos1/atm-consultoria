import 'package:flutter/material.dart';

class TelaCLiente extends StatefulWidget {
  const TelaCLiente({super.key});

  @override
  State<TelaCLiente> createState() => _TelaCLienteState();
}

class _TelaCLienteState extends State<TelaCLiente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("imagens/detalhe_cliente.png"),
                      Text("Clientes")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("imagens/cliente1.png"),
                      Text("Empresa de software")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("imagens/cliente2.png"),
                      Text("Empresa de auditoria")
                    ],
                  ),
                ),
              ]
            )
          )
        )
      )
    );
  }
}
