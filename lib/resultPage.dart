import 'package:flutter/material.dart';
import 'constent.dart';
import 'reusable_card.dart';
import 'buttom_button.dart';
import 'input_page.dart';
class Result extends StatelessWidget {
  final String bmiResut;
  final String resultTest;
  final String interpretation;

  Result({@required this.bmiResut,@required this.resultTest,@required this.interpretation});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                child: Text('Your Result',
                style: KTitleTextStyle,
                ),
              )),
          Expanded(
            flex: 5,
            child:ReusableCard(
              colour: kcontainerColor,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.stretch,
                children: [
                  Text(resultTest.toUpperCase(),
                    style: KResultText,
                    textAlign: TextAlign.center,
                  ),
                  Text(bmiResut,
                  style: KBmiText,
                    textAlign: TextAlign.center,
                  ),
                  Text(interpretation,
                  style: KBodyTextStyle,
                  textAlign: TextAlign.center,),



                ],
              ),
            ) ,
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>InputPage()
              ));
            },
          )
        ],
      ),
    );
  }
}
