import 'package:flutter/material.dart';

class InfoCardContent extends StatelessWidget {
  final String? selectedBuyerDiv;
  final String? selectedStyleNumber;
  final String? selectedMeasureStage;
  final List<String> buyerDivItems;
  final List<String> styleNumber;
  final List<String> measurestageitems;
  final ValueChanged<String?> onBuyerDivChanged;
  final ValueChanged<String?> onStyleNumberChanged;
  final ValueChanged<String?> onMeasureStageChanged;

  const InfoCardContent({
    Key? key,
    required this.selectedBuyerDiv,
    required this.selectedStyleNumber,
    required this.selectedMeasureStage,
    required this.buyerDivItems,
    required this.styleNumber,
    required this.measurestageitems,
    required this.onBuyerDivChanged,
    required this.onStyleNumberChanged,
    required this.onMeasureStageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement your content here
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const Text(
            "Doc No: ",
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: DropdownButton<String>(underline: Container(),

              isExpanded: true,
              elevation: 16,
              hint: const Text("Select Division"),
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedBuyerDiv,
              items: buyerDivItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onBuyerDivChanged,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Style No',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: DropdownButton<String>(
              underline: Container(),
              isExpanded: true,
              elevation: 16,
              hint: const Text("Select Style"),
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedStyleNumber,
              items: styleNumber.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onStyleNumberChanged,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Measure Stage',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: DropdownButton<String>(
              underline: Container(),
              isExpanded: true,
              elevation: 16,
              hint: const Text("Select Stage"),
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedMeasureStage,
              items: measurestageitems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onMeasureStageChanged,
            ),
          ),
        ],
      ),
    );
  }
}