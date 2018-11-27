import 'package:flutter/material.dart';
import './textTitle.dart';

class TitleControl extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return _TitleControlState();
    }
}

class _TitleControlState extends State<TitleControl>{
    String _title='Boring Title';
    var _titleColor;
    String _buttonText='Change title for a funny title';
    bool _isFunnyTitle=false;

    @override
      Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor:Colors.white,
          ),
          home: Scaffold(
            appBar: AppBar(title: TextTitle(title:_title,titleColor: _titleColor,),elevation: 0.0),
            body: Column( children: <Widget>[
              RaisedButton(child: Text(_buttonText),color: Colors.deepPurple,textColor: Colors.white ,onPressed: (){
                setState(() {
                  _isFunnyTitle=!_isFunnyTitle;
                  _buttonText=_isFunnyTitle?'Change title for a funny title':'Change title for a boring title';
                  _title=_isFunnyTitle?'Boring Title':'»-(¯`·.·´¯)->Funny Title<-(¯`·.·´¯)-«';
                  _titleColor=_isFunnyTitle?Colors.black: Colors.deepPurple;
                });
              },)
            ],),
          ),
        );
      }
}