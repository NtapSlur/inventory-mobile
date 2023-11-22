import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';
import 'package:inventory/product.dart';

class DetailPage extends StatelessWidget {
    final Product product;

    DetailPage(this.product, {super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(product.fields.nama),
            ),
            
            body: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text("Deskripsi : ${product.fields.deskripsi}"),
                    const SizedBox(height: 10),
                    Text("Harga : ${product.fields.harga}"),
                    const SizedBox(height: 10),
                    Text("Banyak : ${product.fields.banyak}"),
                    const SizedBox(height: 10),
                    Text("Jenis: ${product.fields.jenis}")
                        ],
              ),
            ),
        );
    }
}
