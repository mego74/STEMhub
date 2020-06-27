import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore,this.resetHandlar);

  String get resultPhrase {
    String resultText;
    if (resultScore == 31) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 30) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 29) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 28) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 27) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 26) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 25) {
      resultText = 'You are Good! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 24) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 23) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 22) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 21) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 20) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 19) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 18) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 17) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 16) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 15) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 14) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 13) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 12) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 11) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 10) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 9) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 8) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }else if (resultScore == 7) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }else if (resultScore == 6) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }else if (resultScore == 5) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 4) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 3) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 2) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }
    else if (resultScore == 1) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
    }else if (resultScore == 0) {
      resultText = 'You are Bad! Result Score: $resultScore out of 31';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!',
          ),textColor:Colors.blue,onPressed: resetHandlar,)
        ],
      ),
    );
  }
}




























