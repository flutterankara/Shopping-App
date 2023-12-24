import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Search App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();

  Future<List<Map<String, dynamic>>> _fetchData() async {
    final response = await http.get(Uri.parse('https://pawket.loca.lt/get/products/'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  List<Map<String, dynamic>> _searchProducts(List<Map<String, dynamic>> products, String query) {
    // Verileri isme göre filtreleme işlemi
    return products
        .where((product) =>
        product['name'] != null &&
            product['name'].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Search App'),
      ),
      body: FutureBuilder(
        future: _fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<Map<String, dynamic>> products = snapshot.data as List<Map<String, dynamic>>;

            String query = _searchController.text;
            List<Map<String, dynamic>> filteredProducts = _searchProducts(products, query);

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (query) {
                      // setState yerine yeni bir listeyi güncelliyoruz
                      List<Map<String, dynamic>> filteredProducts = _searchProducts(products, query);
                      // Yeniden çizmek için build metodu çağrılıyor
                      (context as Element).markNeedsBuild();
                    },
                    decoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Enter product name...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredProducts.length,
                    itemBuilder: (context, index) {
                      final product = filteredProducts[index];
                      return ListTile(
                        title: Text(product['name'] ?? ''),
                        subtitle: Text(product['description'] ?? ''),
                      );
                    },
                  ),
                ),
                // Ekranın alt kısmında gelen tüm verileri göster
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      json.encode(products),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
