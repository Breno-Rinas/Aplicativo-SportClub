import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  String image = " ";
  String nome = " ";
  String esportes = " ";
  SecondRoute(String image, String nome, String esportes) {
    this.image = image;
    this.nome = nome;
    this.esportes = esportes;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mais Informações"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 219, 255, 220),
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 4,
                  ),
                ),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(60),
                    child: Image(
                      image: AssetImage(image),
                      width: 1000,
                      height: 1000,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: Text(
                  '$nome',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: Text(
                  '$esportes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: Text(
                  'Tabela de Horários',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Dia ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              DataTable(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: Colors.white),
                columns: [
                  DataColumn(label: Text(" ")),
                  DataColumn(
                      label: Text(
                    "Quadra 1",
                    style: TextStyle(fontSize: 7),
                  )),
                  DataColumn(
                      label: Text(
                    "Quadra 2",
                    style: TextStyle(fontSize: 7),
                  )),
                  DataColumn(
                      label: Text(
                    "Quadra 3",
                    style: TextStyle(fontSize: 7),
                  )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(
                      Text("08:00 - 09:00 "),
                    ),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("09:00 - 10:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("10:00 - 11:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("11:00 - 12:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("13:00 - 14:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("14:00 - 15:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("15:00 - 16:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("16:00 - 17:00")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("17:00 - 18:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("18:00 - 19:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("19:00 - 20:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("20:00 - 21:00 ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                    DataCell(Text(" ")),
                  ]),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Voltar a Lista de locais'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
