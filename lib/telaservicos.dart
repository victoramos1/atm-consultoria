import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  const TelaServicos({super.key});

  @override
  State<TelaServicos> createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("imagens/detalhe_servico.png"),
                    Text("Sobre a empresa")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text("Consultoria",
                  textAlign: TextAlign.justify
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text("Cálculo de preços",
                  textAlign: TextAlign.justify
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text("Acompanhamento de projetos",
                  textAlign: TextAlign.justify
                )
              )
            ],
          )
        )
      )
    );
  }
}
