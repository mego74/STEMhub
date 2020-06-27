import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore,this.resetHandlar);

  String get resultPhrase {
    String resultText;
    if (resultScore == 6) {
      resultText = 'You are Good! Result Score: $resultScore out of 6';
    } else if (resultScore == 5) {
      resultText = 'You are Good! Result Score: $resultScore out of 6';
    } else if (resultScore == 4) {
      resultText = 'YYou are Good! Result Score: $resultScore out of 6';
    }
    else if (resultScore == 3) {
      resultText = 'You are Bad! Result Score: $resultScore out of 6';
    }
    else if (resultScore == 2) {
      resultText = 'You are Bad! Result Score: $resultScore out of 6';
    }
    else if (resultScore == 1) {
      resultText = 'You are Bad! Result Score: $resultScore out of 6';
    }else if (resultScore == 0) {
      resultText = 'You are Bad! Result Score: $resultScore out of 6';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!',
          ),textColor:Colors.blue,onPressed: resetHandlar,)
        ],
      ),
    );
  }
}




























