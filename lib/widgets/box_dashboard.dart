import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/helpers/TextStyle.dart';
import 'package:phone_verification/helpers/colors_constant.dart';

class DashboardBox extends StatelessWidget {
  DashboardBox(
      {this.title = '',
      this.value = '',
      this.icon = Icons.title,
      this.color = kColorWhite,
      this.onPress});

  final String title;
  final IconData icon;
  final String value;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: ConstScreen.setSizeHeight(160),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: RaisedButton(
          onPressed: () {
            onPress();
          },
          color: kColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //TODO: icon
                      Icon(
                        icon,
                        size: 15,
                        color: color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //TODO: Title
                      AutoSizeText(
                        title,
                        style: kBoldTextStyle.copyWith(
                            fontSize: 18, color: color),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                    ],
                  ),
                ),
                // TODO: Value
                Expanded(
                  flex: 5,
                  child: Center(
                    child: AutoSizeText(
                      value,
                      style: kBoldTextStyle.copyWith(
                          fontSize: 27,
                          color: kColorBlack.withOpacity(0.75)),
                      maxLines: 1,
                      minFontSize: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
