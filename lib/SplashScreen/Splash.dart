import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:maudit/Components/app_extensions.dart';

import 'InfoTab/InfoCardContent.dart';
import '../Components/applogo.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String? selectedBuyerDiv;
  String? selectedStyleNumber;
  String? selectedMeasureStage;


  List<String> buyerdivitems = ['ARROWMT', 'BRMT', 'TALBB'];
  List<String> stylenumber = [
    'ATF SUM22 SAMPLING/31477',
    '612737 / 33886',
    'Option 3'
  ];
  List<String> measurestageitems = ['Stage 1', 'Stage 2', 'Stage 3'];
  List<String> typeitems = ['Type 1', 'Type 2', 'Type 3'];
  List<String> aqlitems = ['Standard 1', 'Standard 2', 'Standard 3'];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Screen width: ${mediaQuery.size.width}');
    print('Screen height: ${mediaQuery.size.height}');
    print('Padding: ${mediaQuery.padding}');
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            _buildAppBar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height-160,
                    child: InfoCardBox(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4 ,
                    height: MediaQuery.of(context).size.height-160,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget InfoCardBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        flex: 1,
        child: SingleChildScrollView(
          child: InfoCardContent(
            selectedBuyerDiv: selectedBuyerDiv,
            selectedStyleNumber: selectedStyleNumber,
            selectedMeasureStage: selectedMeasureStage,
            buyerDivItems: buyerdivitems,
            styleNumber: stylenumber,
            measurestageitems: measurestageitems,
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
    );
  }

  _buildAppBar(

      ) {
    return GlassmorphicContainer(
      width: double.infinity,
      height: 92,
      borderRadius: 0,
      blur: 10,
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFe6e6e6).withOpacity(0.1),
            const Color(0xFF227DD7).withOpacity(0.05),
          ],
          stops: const [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFe6e6e6).withOpacity(0.5),
          const Color((0xFFe6e6e6)).withOpacity(0.5),
        ],
      ),
      child: Container(

        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  AppLogoWithName(back: true,),
                  VerticalDivider(
                    color: context.res.color.bgColorBlue.withOpacity(0.2),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Measurement Audit",
                        style: TextStyle(
                          color: context.res.color.black,
                          fontSize: 16,
                        ),
                      ),
                      // const SizedBox(height: 5),
                      // Text(
                      //   "PreProduction Sample check",
                      //   style: TextStyle(
                      //     color: context.res.color.textGray,
                      //     fontSize: 12,
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 16),
                  VerticalDivider(
                    color: context.res.color.bgColorBlue.withOpacity(0.2),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


