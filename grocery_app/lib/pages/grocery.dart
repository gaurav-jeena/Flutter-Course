import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/productservices.dart';
import '../models/product.dart';
import '../widgets/item.dart';

class GroceryApp extends StatefulWidget {
  GroceryApp() {}

  @override
  State<GroceryApp> createState() => _GroceryAppState();
}

class _GroceryAppState extends State<GroceryApp> {
  Productservice service = Productservice();

  // Bring the Data from the Service
  List<Product> products = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<List<Product>> future = service.getProducts();
    future.then((List<Product> products) {
      this.products = products;
      setState(() {
        // setState will call build,
        // build will print the things
      });
    }).catchError((err) => print("Error is $err"));
    //  future.then().catchError();
  }

  @override
  Widget build(BuildContext context) {
    const imageURL =
        'https://images2.minutemediacdn.com/image/upload/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/643188-gettyimages-153946385-ca1ccfaad9be44325afc434b305adc0d.jpg';
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.amber,
        title: Text('WELCOME TO GROCERY APP'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.grey.shade200,
            margin: EdgeInsets.only(left: 7, top: 5, right: 7),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search For Products'),
            ),
          ),
          Divider(),
          Container(
            //margin: EdgeInsets.only(top: 3),
            child: Image.network(imageURL),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //margin: EdgeInsets.only(top: 3),
            child: Image.network(
                'https://images.freekaamaal.com/store_desc_images/1515145891.jpg'),
          ),
          Wrap(
            //children: [Text('Hi')],
            children: products
                .map((singleProduct) => Item(
                    url: singleProduct.url,
                    label: singleProduct.name.substring(0, 6)))
                .toList(),
          )
        ]),
      ),
    );
  }
}
