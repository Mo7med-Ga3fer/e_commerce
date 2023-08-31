import 'package:flutter/material.dart';

class AgeDropDownWidget extends StatefulWidget {
  const AgeDropDownWidget({Key? key}) : super(key: key);

  @override
  State<AgeDropDownWidget> createState() => _HomePageState();
}

class _HomePageState extends State<AgeDropDownWidget> {
  // define a list of options for the dropdown
  final List<String> _ages = ["Less than 17", "17 to 30", "More than 30"];

  // the selected value
  String? _selectedAge;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(30)),
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(15),
          value: _selectedAge,
          onChanged: (value) {
            setState(() {
              _selectedAge = value;
            });
            debugPrint("You selected $_selectedAge");
          },
          hint: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Age Range',
            ),
          ),
          // Hide the default underline
          underline: Container(),
          // set the color of the dropdown menu
          dropdownColor: const Color(0xffF4F4F4),
          icon: Image.asset('assets/images/arrowdown.png'),
          isExpanded: true,

          // The list of options
          items: _ages
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ))
              .toList(),

          // Customize the selected item
          selectedItemBuilder: (BuildContext context) => _ages
              .map((e) => Center(
                    child: Text(
                      e,
                      style: const TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
              .toList(),
        ),
      );
  }
}