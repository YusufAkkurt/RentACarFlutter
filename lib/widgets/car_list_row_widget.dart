import 'package:flutter/material.dart';

class CarListRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            const ListTile(
              title: Text("Hyundai Accent"),
              subtitle: Text("Findex Point: 150"),
              trailing: Icon(Icons.car_rental),
            ),
            // Image.network(
            //     "https://mychiptuningfiles.com/tr/image/models/RrqzC1YeTCoj5FnDIfOlD0LsNPUjlo.png"),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15),
              child: RichText(
                text: TextSpan(
                  text: "Detaylar: ",
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sonik Grisi, 2020 Model Hybrit, Sedan kasa',
                        style: TextStyle(color: Colors.black54)),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                OutlinedButton(
                  child: const Text(
                    "GÜNCELLE",
                    style: TextStyle(color: Colors.black54),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  child: const Text('İNCELE',
                      style: TextStyle(color: Colors.black54)),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
