import 'package:flutter/material.dart';
import 'package:symptom_checker/utils/utils.dart';




class RaisedContinueButton extends StatefulWidget {
  var title;
  var height, width;
  var textstyle;
  double? leftmargin = 0.0;
  double? rightmargin = 0.0;
  double? topmargin = 0.0;
  double? bottommargin = 0.0;
  Color? background;
  Color? borderColor;
  final VoidCallback? onPressed;

  RaisedContinueButton(
      {Key? key,
        this.title,
        this.height,
        this.width,
        this.textstyle,
        this.leftmargin,
        this.rightmargin,
        this.topmargin,
        this.bottommargin,
        this.onPressed,
        this.background,
        this.borderColor})
      : super(key: key);

  @override
  _RaisedContinueButtonState createState() => _RaisedContinueButtonState();
}

class _RaisedContinueButtonState extends State<RaisedContinueButton> {
  @override
  Widget build(BuildContext context) {
    return signInButton(
        context,
        widget.title,
        widget.textstyle,
        widget.height,
        widget.width,
        widget.topmargin,
        widget.bottommargin,
        widget.leftmargin,
        widget.rightmargin,
        widget);
  }
}

Widget signInButton(
    context,
    title,
    textStyleEnum,
    height,
    width,
    double? topmargin,
    double? bottommargin,
    double? leftmargin,
    double? rightmargin,
    RaisedContinueButton widget) {
  return Container(
    width: width ?? 80,
    height: height ?? 40,
    margin: EdgeInsets.only(
        top: topmargin ?? 0,
        bottom: bottommargin ?? 0,
        right: rightmargin ?? 0,
        left: leftmargin ?? 0),
    decoration: BoxDecoration(
        border: Border.all(
          color: widget.borderColor ?? Color(0xFF0F4391),
        ),
        color: widget.background ?? Color(0xFFE8FAFF),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        shape: BoxShape.rectangle),
    child: InkWell(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      onTap: () {
        widget.onPressed!();
      },
      child: Center(
          child: Text(
            title ?? "Button",

          )),
    ),
  );
}
