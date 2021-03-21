import 'package:flutter/material.dart';
import 'resuable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const reuseableCardColor = Color(0xFF1d1e33);
const buttomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Expanded(
                    child: ReusableCard(
                      color: reuseableCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Expanded(
                    child: ReusableCard(
                      color: reuseableCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ReusableCard(
                color: reuseableCardColor,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Expanded(
                    child: ReusableCard(
                      color: reuseableCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Expanded(
                    child: ReusableCard(
                      color: reuseableCardColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: buttomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
