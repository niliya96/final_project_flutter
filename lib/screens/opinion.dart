import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/submit_review.dart';

class Opinion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OpinionState();
  }
}

class OpinionState extends State<Opinion> {
  // fields
  String _nation;
  String _passport;
  String _review;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _getNation() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Nation'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Nation is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _nation = value;
      },
    );
}

  Widget _getPassport() {
    return TextFormField(
      maxLength: 8,
      decoration: InputDecoration(labelText: 'Passport'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Passport is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _passport = value;
      },
    );
  }

  Widget _getReview() {
    return TextFormField(
      maxLines: 10,
      decoration: InputDecoration(labelText: 'Your review goes here'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please write something and submit again';
        }

        return null;
      },
      onSaved: (String value) {
        _review = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Write an opinion")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _getNation(),
                _getPassport(),
                _getReview(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.amber[500], fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
                    print(_nation);
                    print(_passport);
                    print(_review);
                    List<String> data = parser("nation" + "#" +  _nation + "#" + "pasport" + "#" +  _passport + "#" + "review" + "#" + _review);
                    onSubmitReview(data);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}