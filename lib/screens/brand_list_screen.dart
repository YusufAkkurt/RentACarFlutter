import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rent_a_car/data/brand_service.dart';
import 'package:rent_a_car/models/brand.dart';
import 'package:rent_a_car/widgets/drawer_widget.dart';

enum Options { update, delete }

class BrandListScreen extends StatefulWidget {
  @override
  _BrandListScreenState createState() => _BrandListScreenState();
}

class _BrandListScreenState extends State<BrandListScreen> {
  var brands = <Brand>[];

  @override
  void initState() {
    this.getBrandsFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[350],
          title: Text("Markalar - Rent A Car",
              style: TextStyle(color: Colors.black87)),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: buildBody(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            addBrand();
          },
          icon: Icon(Icons.add),
          label: Text("Ekle"),
          tooltip: "Yeni Marka Ekle",
          backgroundColor: Colors.grey[350],
          foregroundColor: Colors.black87,
        ),
        drawer: DrawerWidget());
  }

  Widget buildBody() {
    return ListView.builder(
        itemCount: this.brands.length,
        itemBuilder: (BuildContext context, index) {
          final brand = this.brands[index];
          return ListTile(
            leading: Icon(Icons.arrow_forward_rounded),
            title: Text(brand.name),
            trailing: PopupMenuButton<Options>(
              onSelected: (value) => selectProcess(value, brand),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
                PopupMenuItem<Options>(
                  child: Text("Güncelle"),
                  value: Options.update,
                ),
                PopupMenuItem<Options>(
                  child: Text("Sil"),
                  value: Options.delete,
                ),
              ],
            ),
          );
        });
  }

  getBrandsFromApi() {
    BrandService.getAll().then((response) {
      setState(() {
        Iterable brandList = jsonDecode(response.body)["data"];
        this.brands = brandList.map((brand) => Brand.fromJson(brand)).toList();
      });
    });
  }

  void addBrand() {
    print("Yeni marka ekleme işlemi buraya yazılacak");
  }

  selectProcess(Options options, Brand brand) async {
    switch (options) {
      case Options.update:
        print("Seçili marka için, Güncelleme işlemleri buraya yazılacak");
        break;
      case Options.delete:
        print("Seçili marka için, Silme işlemleri buraya yazılacak");
        break;
      default:
    }
  }
}
