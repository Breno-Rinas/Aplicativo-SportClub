import 'package:flutter/material.dart';
import 'second.dart';
import 'locais.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportClub',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'SportClub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var local1 = locais(
      'assets/img/quadra.jpg', 'Cuble Maneiro', 'Quadra de Volei e Futebol');
  var local2 =
      locais('assets/img/quadra3.jpg', 'Clube Esportivo Atlântico', 'Futebol ');
  var local3 = locais('assets/img/quadra2.webp', 'Clube de Basquevo',
      'Quadra de Basquete/Tenis');
  var local4 = locais(
      'assets/img/quadra4.jpg', 'Esporte Clube', 'Quadra de Futebol e Volei');

  @override
  Widget build(BuildContext context) {
    List<locais> lista1 = [local1, local2, local3, local4];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 219, 255, 220),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                height: 300,
                width: 300,
                image: AssetImage('assets/img/logo.png'),
              ),
              Text(
                "SportClub",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: lista1.length,
                  itemBuilder: (context, i) {
                    Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('assets/img/logo.png'),
                    );
                    Text(
                      "SportClub",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    );
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 37, 158, 26)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Color.fromARGB(255, 121, 187, 127),
                          width: 4,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
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
                                size: Size.fromRadius(50),
                                child: Image(
                                  image: AssetImage(lista1[i].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                              ),
                              Flexible(
                                child: Text(
                                  lista1[i].nome,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              Flexible(
                                child: Text(
                                  lista1[i].descricao,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondRoute(
                                              lista1[i].image,
                                              lista1[i].nome,
                                              lista1[i].descricao)),
                                    );
                                  },
                                  child: Text("Veja mais informações"))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Procurar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
