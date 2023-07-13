import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  String? selectedBuyerDiv;
  String? selectedStyleNumber;
  String? selectedMeasureStage;

  List<String> buyerdivitems = ['ARROWMT', 'BRMT', 'TALBB'];
  List<String> stylenumber = [
    'ATF SUM22 SAMPLING/31477',
    '612737 / 33886',
    'Option 3'
  ];
  List<String> measurestageitems=['Stage 1','Stage 2','Stage 3'];
  List<String> typeitems=['Type 1','Type 2','Type 3'];
  List<String> aqlitems=['Standard 1','Standard 2','Standard 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: InfoCard(
                  selectedBuyerDiv: selectedBuyerDiv,
                  selectedStyleNumber: selectedStyleNumber,
                  selectedMeasureStage: selectedMeasureStage,
                  buyerDivItems: buyerdivitems,
                  styleNumber: stylenumber,
                  measurestageitems:measurestageitems,
                  onBuyerDivChanged: (String? newValue) {
                    setState(() {
                      selectedBuyerDiv = newValue;
                    });
                  },
                  onStyleNumberChanged: (String? newValue) {
                    setState(() {
                      selectedStyleNumber = newValue;
                    });
                  },
                  onMeasureStageChanged: (String? newValue) {
                    setState(() {
                      selectedMeasureStage = newValue;
                    });
                  },
                ),
              ),
            ),
            Expanded
              (
              flex: 3,
              child: Center(
                child: Table(
                  border: TableBorder.all(),
                  defaultColumnWidth: const FixedColumnWidth(100.0),
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Header 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Header 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Header 3')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 1, Column 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 1, Column 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 1, Column 3')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 2, Column 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Column 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Column 3')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatefulWidget {
  final String? selectedBuyerDiv;
  final String? selectedStyleNumber;
  final String? selectedMeasureStage;
  final List<String> buyerDivItems;
  final List<String> styleNumber;
  final List<String> measurestageitems;
  final ValueChanged<String?> onBuyerDivChanged;
  final ValueChanged<String?> onStyleNumberChanged;
  final ValueChanged<String?> onMeasureStageChanged;

  const InfoCard({
    Key? key,
    this.selectedBuyerDiv,
    this.selectedStyleNumber,
    this.selectedMeasureStage,
    required this.buyerDivItems,
    required this.styleNumber,
    required this.measurestageitems,
    required this.onBuyerDivChanged,
    required this.onStyleNumberChanged,
    required this.onMeasureStageChanged,
  }) : super(key: key);

  @override
  State<InfoCard> createState() => InfoCardState();
}

class InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: DropdownButton<String>(
            isExpanded: true,
            elevation: 16,
            hint: const Text("Select Division"),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: widget.selectedBuyerDiv,
            items: widget.buyerDivItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: widget.onBuyerDivChanged,
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
          child: DropdownButton<String>(
            underline: Container(),
            isExpanded: true,
            elevation: 16,
            hint: const Text("Select Style"),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: widget.selectedStyleNumber,
            items: widget.styleNumber.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: widget.onStyleNumberChanged,
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
          child: DropdownButton<String>(
            underline: Container(),
            isExpanded: true,
            elevation: 16,
            hint: const Text("Select Stage"),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: widget.selectedMeasureStage,
            items: widget.measurestageitems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: widget.onStyleNumberChanged,
          ),
        ),
      ],
    );
  }
}
