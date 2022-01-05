import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constent.dart';
import 'resultPage.dart';
import 'buttom_button.dart';
import 'calculator_brain.dart';

enum gender{male,female,}







class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  gender selectGender;
  int hight=180;
  int wight=60;
  int age=12;


  @override





  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child:Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onpress: (){
                    setState(() {
                      selectGender=gender.male;
                    });
                  },
                  colour: selectGender==gender.male?kcontainerColor:kinActiveCardColor,
                  cardChild: IconContent(
                    inputIcon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                ),
              ),

              Expanded(
                child: ReusableCard(
                  onpress: (){
                    setState(() {
                      selectGender=gender.female;
                    });
                  },
                    colour: selectGender==gender.female?kcontainerColor:kinActiveCardColor,
                  cardChild: IconContent(
                    inputIcon: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                )
              ),
            ],
          )),
          Expanded(child:ReusableCard(
              colour: kcontainerColor,
            cardChild: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height',
                  style: klabelTextStyle,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(hight.toString(),
                    style: ktextstyle1,
                    ),
                    Text('cm',
                    style: klabelTextStyle,)
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                      inactiveTrackColor : Color(0XFF8D8E98),
                    thumbColor: Color(0XFFEB1555),
                    overlayColor: Color(0X33EB1555),
                    thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 30)
                  ),
                  child: Slider(value:hight.toDouble(),
                  min: 120,
                  max: 220,


                  onChanged: (double newval){
                    setState(() {
                      hight=newval.toInt();
                    });
                  },
                  ),
                )

              ],
            ),
          )
            ),
          Expanded(child: Row(
            children: [

              Expanded(
                child:ReusableCard(
                    colour: kcontainerColor,
                  cardChild: Column(
                    children: [
                      Text('weight',
                      style: klabelTextStyle,),
                      Text(wight.toString(),
                      style: ktextstyle1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon:FontAwesomeIcons.plus ,
                              onPressed: (){
                            setState(() {
                              wight++;
                            });
                              },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RoundIconButton(icon:FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              --wight;
                            });

                          },
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
              Expanded(
                child: ReusableCard(
                    colour: kcontainerColor,
                  cardChild: Column(
                    children: [
                      Text('Age',style: klabelTextStyle,),
                      Text(age.toString(),
                      style: ktextstyle1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                              onPressed: (){
                              setState(() {
                                age++;
                              });
                              },
                          ),
                          SizedBox(width: 20,),

                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ),
            ],
          )),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalclatorBrain Cacl=CalclatorBrain(
                height: hight,
                weight: wight
              );
    Navigator.push(context, MaterialPageRoute(
    builder: (context)=> Result(
     bmiResut:  Cacl.Bmicalculation(),
      resultTest: Cacl.getResult(),
      interpretation: Cacl.getInterpretation(),
    )
    ));},
          ),
        ],
      ),


    );
  }
}


class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({this.icon, this.onPressed}) ;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}


