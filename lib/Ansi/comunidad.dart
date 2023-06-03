import 'package:flutter/material.dart';
import 'Emergencia.dart';
import 'home.dart';
class comunidad extends StatefulWidget {
  const comunidad({super.key});

  @override
  State<comunidad> createState() => _comunidadState();
}

class _comunidadState extends State<comunidad> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ansi'),
          bottom: TabBar(
            tabs: [
             Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Home'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),
              ),
              Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Emergencia'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Emergencia()));
                    }),
              ),
              Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Comunidad'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => comunidad()));
                    }),
              ),
            ],
          ),
        ),
        
      ),
      
    );
    return MaterialApp(
      home:HomeTab(),
    );
  }
}
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> posts = [];

  void addPost(String postContent) {
    setState(() {
      posts.add(postContent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Social de Psicología'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(posts[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPostScreen(addPost),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddPostScreen extends StatelessWidget {
  final Function(String) addPostCallback;

  AddPostScreen(this.addPostCallback);

  @override
  Widget build(BuildContext context) {
    String postContent = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Publicación'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                postContent = value;
              },
              decoration: InputDecoration(
                labelText: 'Contenido de la Publicación',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                addPostCallback(postContent);
                Navigator.pop(context);
              },
              child: Text('Publicar'),
            ),
          ],
        ),
      ),
    );
  }
}