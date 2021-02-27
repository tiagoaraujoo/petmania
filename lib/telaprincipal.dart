import 'package:flutter/material.dart';

void main() {
  runApp(Abas());
}

class Abas extends StatefulWidget {
  @override
  _AbasState createState() => _AbasState();
}

class _AbasState extends State<Abas> {
  int _abaSelecionada = 0;

  List<Widget> abas = [
    Container(
      child: ListView(
        children: [
          Card(
              child: ListTile(
            leading: Image.network(
                "https://http2.mlstatic.com/D_NQ_NP_690175-MLB28827646976_112018-O.jpg"),
            title: Text("  gato"),
            subtitle: Text("  filhote adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Abacaxi"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://meusanimais.com.br/wp-content/uploads/2015/04/scotish-fold.jpg"),
            title: Text("gato"),
            subtitle: Text("filhotes órfãos para adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://fofuxo.com.br/_upload/galleries/2013/04/08/scottish-fald-51636c26e7c25.jpg"),
            title: Text("  gato"),
            subtitle: Text("  filhote adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://meusanimais.com.br/wp-content/uploads/2018/01/scotish-fold-3-461x308.jpg"),
            title: Text("gato"),
            subtitle: Text("para adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://blog.direcional.com.br/wp-content/uploads/2018/03/direcional-pets-em-apartamentos-dicas-para-quem-pretende-adotar-um-620x390.jpg"),
            title: Text("gato"),
            subtitle: Text("precisando de  um lar"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://i1.wp.com/www.animalepetshop.com.br/wp-content/uploads/2018/09/Poodle-Toy.jpeg?fit=1280%2C853"),
            title: Text(" poodle"),
            subtitle: Text(" filhote pronto adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://www.petz.com.br/blog/wp-content/uploads/2020/05/poodle-tamanhos-pet.jpg"),
            title: Text(" poodle"),
            subtitle: Text(" 05 meses, a espera de um  lar"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://meupulguento.com/wp-content/uploads/2020/02/buldogue-franc%C3%AAs-696x521.jpg"),
            title: Text("  buldogue"),
            subtitle: Text("  a espera de um lar"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://statig0.akamaized.net/bancodeimagens/d8/xd/6k/d8xd6k64ugv2m7m9lcsscaud0.jpg"),
            title: Text("Pastor alemão"),
            subtitle: Text("filhotes a  espera  de um lar"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
          Card(
              child: ListTile(
            leading: Image.network(
                "https://www.petlove.com.br/dicas/wp-content/uploads/2018/05/buldogue-dourado.jpg"),
            title: Text("buldogue"),
            subtitle: Text("para adoção"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => print("Manga"),
            ),
          )),
        ],
      ),
    ),
    Container(
      child: ListView(
        children: [],
      ),
    )
  ];

  mudaAba(int posicao) {
    setState(() {
      _abaSelecionada = posicao;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: Container(
          child: abas.elementAt(_abaSelecionada),
        ),
        drawer: Container(
          color: Colors.blue[100],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("araujo@gmail.com"),
                accountName: Text("tiago"),
                currentAccountPicture: CircleAvatar(
                  child: Text("TR"),
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("minha conta"),
                onTap: () {
                  Navigator.pop(context);
                  //navegar para  outra pagina
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("Cesta de adoção"),
                onTap: () {
                  Navigator.pop(context);
                  //navegar para outra pagina
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app_outlined),
                title: Text("Sair"),
                onTap: () {
                  Navigator.pop(context);
                  //navegar para outra pagina
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                title: Text("home"), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: Text("cadastro"), icon: Icon(Icons.add)),
            BottomNavigationBarItem(
                title: Text("pesquisa"), icon: Icon(Icons.search)),
          ],
          onTap: mudaAba,
        ),
      ),
    );
  }
}
