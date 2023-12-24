
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/subviews/orders/orders_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:pawcat/resources/d_colors.dart';
part 'orders_view.g.dart';

@swidget
Widget ordersView(void data) => ViewModelBuilder<OrdersViewModel>.reactive(
  viewModelBuilder: () => OrdersViewModel(),
  builder: (_, model, __) => Scaffold(
    body:
    Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Card(

            elevation: 0.0,
            color: DColors.grey0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0), // Tüm kenarlara 16 piksel padding
                  child: Expanded(
                      child:

                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Tüm kenarlara 16 piksel ovallik
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg',
                          fit: BoxFit.cover, // Görüntüyü kaplayacak şekilde sığdır
                          height: 100,
                        ),
                      )
                    //Image.asset("productImage"),

                  ),

                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("productName", style: TextStyle(fontSize: 18.0)),
                        SizedBox(height: 8.0),
                        Text("productDescription", style: TextStyle(fontSize: 16.0)),
                        SizedBox(height: 8.0),
                        Text(
                          "10 TL",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                // Sol tarafta ürün görseli

                // Sağ tarafta ürün ismi, ürün açıklaması ve ürün fiyatı

              ],
            ),
          ),
        ],
      ),
    ),

  ),
);







