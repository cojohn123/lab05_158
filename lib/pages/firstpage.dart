import 'package:flutter/material.dart';
import 'package:lab05_158/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> foods = [];
  String foodvalue = "กรุณาเลือกเมนู";
  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
    // for (var f in foods) {
    //    print(f.thFood);
    //  }
  }

  List<Widget> createRadioFood() {
    List<Widget> myfoods = [];

    for (var fd in foods) {
      myfoods.add(RadioListTile(
          title: Text(fd.thFood),
          secondary: Text("${fd.price}บาท"),
          subtitle: Text(fd.enFood),
          value: fd.value,
          groupValue: foodvalue,
          onChanged: (value) {
            setState(() {
              foodvalue = value!;
            });
          }));
    }
    return myfoods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food 158")),
      body: Column(children: [
        const Text("เลือกเมนูอาหาร"),
        Column(
          children: createRadioFood(),
        ),
        Text(
          foodvalue,
          style: const TextStyle(fontSize: 20, color: Colors.green),
        )
      ]),
    );
  }
}
