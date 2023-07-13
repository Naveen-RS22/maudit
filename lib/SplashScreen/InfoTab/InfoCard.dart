import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  // final BeforewashViewModal views;

  const InfoCard({Key? key, required views}) : super(key: key);

  @override
  State<InfoCard> createState() => InfoCardState();
}

class InfoCardState extends State<InfoCard> {
  String? selectedBuyerDiv;
  String? selectedStyleNumber;

  List<String> BuyerDivItems = ['ARROWMT', 'BRMT', 'TALBB'];
  List<String> StyleNumber = [
    'ATF SUM22 SAMPLING/31477',
    '612737 / 33886',
    'Option 3'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            ("hhh"),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Buyer Division',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
          Container(
            child:  DropdownButton<String>(
              isExpanded: true,
              elevation: 16,
              hint: const Text("Select Division"),
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedBuyerDiv,
              items: BuyerDivItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedBuyerDiv = newValue;
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Style No:',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
          Container(
            child:    DropdownButton<String>(
              underline: Container(),
              isExpanded: true,
              elevation: 16,
              hint: const Text("Select Style"),
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedStyleNumber,
              items: StyleNumber.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedStyleNumber = newValue;
                });
              },
            ),
          ),
        ],
      )),
    );
  }
}
