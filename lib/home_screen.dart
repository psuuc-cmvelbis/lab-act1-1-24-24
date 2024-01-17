import 'package:flutter/material.dart';
import 'package:vel/add_screen.dart';
import 'package:vel/model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Prod> pList = [Prod(code: 'whw3', name: 'name', price: 22222.00)];

  void addF(Prod p) {
    setState(() {
      pList.add(p);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => addS(
                    addP: addF,
                  ),
                ));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Expanded(
          child: ListView.builder(
        itemCount: pList.length,
        itemBuilder: (context, index) => Card(
          elevation: 10,
          child: ListTile(
            leading: const Icon(Icons.star),
            title: Text(pList[index].name),
          ),
        ),
      )),
    );
  }
}
