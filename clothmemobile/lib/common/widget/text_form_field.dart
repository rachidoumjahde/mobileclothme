import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final bool textHide;
  final String type;
  final IconData icon;
  final Function onSave;
  final Function onValidator;
  final TextInputType keyboardInputType;

  const TextFieldInput(
      {Key key,
      this.type,
      this.icon,
      this.keyboardInputType,
      this.textHide,
      this.onSave,
      this.onValidator})
      : super(key: key);

//  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
              obscureText: textHide,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: type,
                  icon: Icon(
                    icon,
                    color: Colors.black38,
                  ),
                  labelStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Sans',
                      letterSpacing: 0.3,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600)),
              keyboardType: keyboardInputType,
              onSaved: onSave,
              validator: onValidator),
        ),
      ),
    );
  }
}
