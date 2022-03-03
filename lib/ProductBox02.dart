import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Product {
  String name;
  String description;
  int price;
  String image;

  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "Pixel", "Pixel is the most featursseful phone ever", 800, "pixel.jpg"));

    items.add(Product(
        "iPhone", "iPhone is the stylist phone ever", 1000, "iphone.jpg"));

    return items;
  }
}

class RatingBox extends StatefulWidget {
  @override
  State<RatingBox> createState() => _RatingBox();
}

class _RatingBox extends State<RatingBox> {
  int rating = 0;

  void setRatingAsOne() {
    setState(() {
      rating = 1;
    });
  }

  void setRatingAsTwo() {
    setState(() {
      rating = 2;
    });
  }

  void setRatingAsThree() {
    setState(() {
      rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double sizeStar = 20;
    print(rating);
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 1 ? Icon(
                      Icons.star,
                      size: sizeStar,
                    )
                  : Icon(
                      Icons.star_border,
                      size: sizeStar,
                    )),
              color: Colors.red[500],
              onPressed: setRatingAsOne,
              iconSize: sizeStar,
            ),
          ),

          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 2
                  ? Icon(
                      Icons.star,
                      size: sizeStar,
                    )
                  : Icon(
                      Icons.star_border,
                      size: sizeStar,
                    )),
              color: Colors.red[500],
              onPressed: setRatingAsTwo,
              iconSize: sizeStar,
            ),
          ),

          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (rating >= 3
                  ? Icon(
                      Icons.star,
                      size: sizeStar,
                    )
                  : Icon(
                      Icons.star_border,
                      size: sizeStar,
                    )),
              color: Colors.red[500],
              onPressed: setRatingAsThree,
              iconSize: sizeStar,
            ),
          ),
        ]);
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/" + item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text(item.description),
                            Text("Price: " + item.price.toString()),
                            RatingBox(),
                          ],
                        )))
              ]),
        ));
  }
}

class ProductPage extends StatelessWidget {
  ProductPage({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/" + item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text(item.description),
                            Text("Price: " + item.price.toString()),
                            RatingBox(),
                          ],
                        )))
              ]),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product Navigation demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: items[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(item: items[index]),
                  ),
                );
              },
            );
          },
        ));
  }
}
