import 'package:flutter/material.dart';
import 'package:vel/model.dart';

class addS extends StatefulWidget {
  addS({super.key, required this.addP});

  final Function(Prod p) addP;

  @override
  State<addS> createState() => _addSState();
}

class _addSState extends State<addS> {
  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController price = TextEditingController();

    List<Prod> prods = [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Code', border: OutlineInputBorder()),
              controller: code,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Name/Desc', border: OutlineInputBorder()),
              controller: name,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Price', border: OutlineInputBorder()),
              controller: price,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  var pr = double.parse(price.text);
                  widget.addP(Prod(
                    code: code.text,
                    name: name.text,
                    price: pr,
                  ));
                  Navigator.of(context).pop();
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
