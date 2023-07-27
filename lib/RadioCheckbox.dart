import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


class RadioCheckbox extends StatefulWidget {
  const RadioCheckbox({Key? key}) : super(key: key);

  @override
  State<RadioCheckbox> createState() => _RadioCheckboxState();
}

class _RadioCheckboxState extends State<RadioCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioNcheckBox"), backgroundColor: Colors.lightGreenAccent,),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                CheckboxGroup(
                  labelStyle: TextStyle(fontSize: 25, color: Colors.redAccent),
                  labels: [
                    "Onions",
                    "Mushrooms",
                    "Black olives",
                    "Green chillies"
                  ],
                  onSelected: (List checked){
                      print("you selected $checked");
                  },
                ),
              ],
            ),
            Row(
              children: [
                RadioButtonGroup(
                    labelStyle: TextStyle(fontSize: 25, color: Colors.red),
                    labels: [
                  "male", "female"
                ],
                  onSelected: (String sel){
                      print("you selected $sel");
                  },

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
