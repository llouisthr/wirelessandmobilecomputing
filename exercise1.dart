import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Load Image')
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}): super(key: key);

  final String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('6488023'),
      ),
      //body: Center(child: Image.network('https://creativetalkconference.com/content/images/wordpress/2019/10/applelogo1.jpg')),
      //body: Center(child: Icon(Icons.home)),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "Chocolate Cake",
            description: "Sweet with chocolate",
            price: 140,
            image: "chocolate.jpg",
          ),
          ProductBox(
            name: "Coffee Cake",
            description: "Fresh with coffee",
            price: 150,
            image: "coffee.jpg"
          ),
          ProductBox(
            name: "Matcha Cake",
            description: "Cool with matcha",
            price: 120,
            image: "greentea.jpg"
          ),
          ProductBox(
            name: "Orange Cake",
            description: "Sour with orange",
            price: 120,
            image: "orange.jpg"
          ),
          ProductBox(
            name: "Strawberry Cake",
            description: "Pink with strawberry",
            price: 120,
            image: "strawberry.jpg"
          ),
          ProductBox(
            name: "Vanilla Cake",
            description: "Tasty with vanilla",
            price: 110,
            image: "vanilla.jpg"
          ),
        ]
      )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name,required this.description,required this.price,required this.image}) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
            Widget build(BuildContext context) {
                  return Container(
                  padding: EdgeInsets.all(2),
                  height: 120,
                  child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                    Image.asset("assets/appimages/" + image),
            Expanded(
                  child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                              Text(this.name,
                              style: TextStyle(fontWeight:
                              FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                          ],
                          )))
                        ])));
              } 
}
/*class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Counter('6488023'),
        Counter('Tharich Haengphosakul'),
        Counter('Projectilizer'),
        Counter('6488117, 6488180, 6488205')
      ],
    );
  }
}*/

class Counter extends StatefulWidget {
  final String _name;
  Counter(this._name);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFD6A02)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // [widget] is the property of the State class that stores
          // the instance of the [StatefulWidget] ([Counter] in our case)
          _CounterLabel(widget._name),
          _CounterButton(
            count,
            onPressed: () {
              setState(() {
                ++count;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _CounterLabel extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 26.0,
  );

  final String _label;
  _CounterLabel(this._label);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: _CounterLabel.textStyle,
    );
  }
}

class _CounterButton extends StatelessWidget {
  final count;
  final onPressed;
  _CounterButton(this.count, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Color(0xFFFD6A02),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}