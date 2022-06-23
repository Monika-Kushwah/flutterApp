import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/constant/colors_constant.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent(
      {Key key,  this.buttonColor,  this.buttonText,  this.onPressed})
      : super(key: key);

  final Color buttonColor;
  final Text buttonText;
  final Function onPressed;

  @override
  _ButtonComponentState createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: widget.onPressed,
        child: widget.buttonText,
        color: widget.buttonColor,
        textColor: Colors.white,
      ),
    );
  }
}

class RoundedButton extends StatefulWidget {
  const RoundedButton(
      { Key key,
         this.onPressed,
         this.buttontext,
         this.buttoncolor,
         this.bordercolor,
         this.boxShadow,
         this.buttontextcolor})
      : super(key: key);

  final Function onPressed;
  final Widget buttontext;
  final Color buttoncolor;
  final Color buttontextcolor;
  final Border bordercolor;
  final BoxShadow boxShadow;

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      height: MediaQuery.of(context).size.height*0.07,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.buttontext,
        style: ElevatedButton.styleFrom(
           side: const BorderSide(color: primaryColor,width: 1.5),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          primary: widget.buttoncolor,
          textStyle: TextStyle(color: widget.buttontextcolor),
        ),
        // textColor: widget.buttontextcolor,
        // color: widget.buttoncolor,
      ),
    );
  }
}

