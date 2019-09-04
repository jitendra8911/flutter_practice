import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  Product(this.name);
  final String name;
}

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem(this.product, this.inCart, this.handleCartChanged);
  final Product product;
  final bool inCart;
  final handleCartChanged;
  Color _getColor(BuildContext context) {
    return !inCart? Colors.green : Theme.of(context).primaryColor;

  }

  TextStyle _getTextStyle() {
    if (inCart) return null;

    return TextStyle(
      color: Colors.green,
      decoration: TextDecoration.underline,
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: () {handleCartChanged(inCart, product);},
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(),),
    );
  }

}

class ShoppingList extends StatefulWidget {
  ShoppingList(this.products);
  final List<Product> products;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  final List<Product> shoppingCart = [];
  void _handleCartChanged(bool inCart, Product product) {
    setState(() {
      if (inCart) {
        shoppingCart.remove(product);
      } else {
        shoppingCart.add(product);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [];
    widget.products.forEach((product) =>
    _children.add(ShoppingListItem(product, shoppingCart.contains(product), _handleCartChanged))
    );
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _children
    );
  }
}

void main() {
  Product product1 = Product("pixel 3");
  Product product2 = Product("lambborgini");
  Product product3 = Product("aston martin");
  List<Product> products = [product1, product2, product3];
  runApp(MaterialApp(
    home: Scaffold(
      body: ShoppingList(products),
    ),
  ));
}