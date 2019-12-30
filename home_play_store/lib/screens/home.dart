import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      drawer: _getDrawer(),
      body: _getBody(),
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }

  Container _getBody() {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 100,width: 100,child:  Card(child:Image.network("https://i.ytimg.com/vi/fuMAjtX41UY/hqdefault.jpg"),),),
              SizedBox(height: 100,width: 100,child:  Card(child:Image.network("https://elandroidefeliz.com/wp-content/uploads/2017/11/Los-mejores-juegos-de-plataformas-para-Android.jpg"),),),
              SizedBox(height: 100,width: 100,child:  Card(child:Image.network("https://i.blogs.es/2acfe8/epic/500_333.jpg"),),),

            ],
          ),
          Card(child:Image.network("https://www.movilzona.es/app/uploads/2018/06/play-store-logo-color.jpg"),),
          Card(child:Image.network("https://cdn.forbes.com.mx/2018/12/google_play.jpg1_-640x360.jpg"),),
          Card(child:Image.network("https://i.ytimg.com/vi/_NCWi0YEpoQ/maxresdefault.jpg"),),
          Card(child:Image.network("https://i.ytimg.com/vi/HAbW0dhRWvI/maxresdefault.jpg"),)
        ],
      ),
    );
  }

  Drawer _getDrawer() {
    return Drawer(
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _getUserHeader(),
            ListTile(
              title: Text("Mis apps y Juegos"),
              leading: Icon(Icons.apps),
            ),
            ListTile(
              title: Text("Notificaciones"),
              leading: Icon(Icons.notifications_none),
            ),
            ListTile(
              title: Text("Suscripciones"),
              leading: Icon(Icons.cached),
            ),
            ListTile(
              title: Text("Lista de deseos"),
              leading: Icon(Icons.favorite_border),
            ),
            Divider(
              color: Colors.black45,
              height: 10,
            ),
            ListTile(
              title: Text("Cuenta"),
              leading: Icon(Icons.person_outline),
            ),
            ListTile(
              title: Text("Formas de pago"),
              leading: Icon(Icons.payment),
            ),
            ListTile(
              title: Text("Play Protect"),
              leading: Icon(Icons.security),
            ),
            ListTile(
              title: Text("Configuracion"),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.black45,
              height: 10,
            ),
            ListTile(
              title: Text("Abir app de Peliculas"),
              leading: Icon(Icons.local_movies),
              trailing: Icon(Icons.exit_to_app),
            ),
            ListTile(
              title: Text("Abir app de Libros"),
              leading: Icon(Icons.book),
              trailing: Icon(Icons.exit_to_app),
            ),
            ListTile(
              title: Text("Abrir app de Musica"),
              leading: Icon(Icons.music_note),
              trailing: Icon(Icons.exit_to_app),
            ),
            Divider(
              color: Colors.black45,
              height: 10,
            ),
            ListTile(
              title: Text("Buscar Musica"),
              leading: Icon(Icons.queue_music),
            ),
            Divider(
              color: Colors.black45,
              height: 10,
            ),
            ListTile(
              title: Text("Canjear"),
            ),
            ListTile(
              title: Text("Ayuda y Comentarios"),
            ),
            ListTile(
              title: Text("Guia para Padres"),
            ),
            ListTile(
              title: Text("Acerca de Google Play"),
            ),
          ],
        ));
  }

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF01875f),
      centerTitle: true,
      title: ListTile(
        trailing: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            debugPrint("Search");
          },
        ),
        title: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottom: TabBar(
      isScrollable: true,
      onTap: (index){
        if(index==0){
          //takePhoto(context);
        }
      },
      tabs: <Widget>[
        Tab(text: "Para ti",),
        Tab(text: "Lista de Exitos",),
        Tab(text: "Premiun",),
        Tab(text: "Categorias",),
        Tab(text: "Familia",),
        Tab(text: "Seleccion del Editor",),
      ],
    ),
    );
  }

  UserAccountsDrawerHeader _getUserHeader() {
    return UserAccountsDrawerHeader(
      onDetailsPressed: () {
        debugPrint("Detail Account");
      },
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            "https://i.pinimg.com/originals/c9/bd/6b/c9bd6bbcbd28690a5f47ee6ce1eb5d0b.jpg"),
      )),
      accountName: Text("Lopez Daimian"),
      accountEmail: Text("dennyslopez2013@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://avatars1.githubusercontent.com/u/46911625?s=400&u=d33335cce7908a2cc536161de475e5fa336746c4&v=4"),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text("FL"),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://www.tecnoshoponline.es/wp-content/uploads/9eb6de771bf478a1a04d08969a76ccf6.png"),
        )
      ],
    );
  }
}

class _getBottomNavigationBar extends StatefulWidget {
  @override
  _getBottomNavigationBarState createState() {
    return _getBottomNavigationBarState();
  }
}

class _getBottomNavigationBarState extends State<_getBottomNavigationBar> {
  int indexTap = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexTap,
      elevation: 10,
      showSelectedLabels: true,
      onTap: (index) {
        setState(() {
          indexTap = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.videogame_asset,
              color: Color(0xFF01875f),
            ),
            title: Text(
              "Juegos",
              style: TextStyle(color: Color(0xFF01875f)),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
              color: Color(0xFF01875f),
            ),
            title: Text(
              "Apps",
              style: TextStyle(color: Color(0xFF01875f)),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_movies,
              color: Colors.red,
            ),
            title: Text(
              "Peliculas",
              style: TextStyle(color: Colors.red),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.lightBlue,
            ),
            title: Text(
              "Libros",
              style: TextStyle(color: Colors.lightBlue),
            )),
      ],
    );
  }
}
