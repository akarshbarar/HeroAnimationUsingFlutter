import "package:flutter/material.dart";
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hero Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HERO ANIMATION"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: "one",
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/codecave.jpg'),
                ),
              ),
              onTap: ()=>Navigator.of(context).push(NewPage(1)),
            ),
            title: Text("One "),
          ),
          Divider(),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: "two",
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/codecave.jpg'),
                ),
              ),
              onTap: ()=>Navigator.of(context).push(NewPage(2)),
            ),
            title: Text("Two "),
          ),
          Divider(),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: "three",
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/codecave.jpg'),
                ),
              ),
              onTap: ()=>Navigator.of(context).push(NewPage(3)),
            ),
            title: Text("Three"),          ),
          Divider(),
        ],
      ),
    );
  }
}
class NewPage extends MaterialPageRoute<Null>{
  int id;
  NewPage(this.id)
  :super(builder:(BuildContext context){
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "${id}",
          child: Image.asset('assets/codecave.jpg'),
        ),
      ),
    );
  });

}