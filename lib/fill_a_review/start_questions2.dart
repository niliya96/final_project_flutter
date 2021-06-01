import 'package:flutter/material.dart';
import 'package:flutter_firebase/home/home.dart';
import 'details_fill.dart';


class StartQuestions2 extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  StartQuestions2(this.list);
  int index = 0;

  @override
  StartQuestionsState2 createState() => StartQuestionsState2();
}

class StartQuestionsState2 extends State<StartQuestions2> {
  int _currentOptionButtomBar = 0;
  
  Widget headLine() {
    return Stack(
      children: <Widget>[
        // image
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Container(
            width: 430.0,
            height: 240.0,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fill_start2.jfif'),
              fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Center (
            child: Text(
              'כמה הסברים לפני שנמשיך',
              style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
            TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 340),
          child: Divider(
              color: const Color.fromRGBO(0, 48, 80, 50),
              thickness: 1,
              indent: 50,
              endIndent: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 360, left: 20, right: 20),
            child: Text(
              'בכל שלב, תוכל לשמור את מה שכבר מילאת ע"י כפתור שמור, או לחזור למסך הבית ללא שמירה',
              style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 17,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
            TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 420, left: 20, right: 20),
          child: Text(
              'תוכל לנווט קדימה ואחורה, ובסוף המילוי יופיע סיכום החוו"ד שמילאת, אותו תוכל לערוך',
              style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 17,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
            TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 330, left: 20, right: 20),
          child: Center(
            child: Text(
                'שים לב לשדות חובה',
                style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 15,
                color: Color.fromRGBO(0, 48, 80, 50),
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,460,0,0),
          child:   Center(
            child: FlatButton(
              height: 60,
              minWidth: 70,
              color: Color.fromRGBO(0, 48, 80, 50),
              child: Text("?שנמשיך",
                  style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              highlightColor: Color.fromRGBO(0, 48, 80, 30),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsFill(this.widget.list)));              
              }),
            ),
          ),  
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
      var scaffold = Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(    
          automaticallyImplyLeading: false,      
          backgroundColor: Color.fromRGBO(67, 232, 137, 50)
        ),
         bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          currentIndex: _currentOptionButtomBar,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                "בית",
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
                BottomNavigationBarItem(
              icon: Icon(Icons.save,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                "שמור",
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
          ],
          onTap: (index) async{
            setState(() {
              _currentOptionButtomBar = index;
            });
            if (_currentOptionButtomBar == 0) {
              await showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("חזור למסך הבית",
                  textAlign: TextAlign.right,),
                  content: Text('האם אתה בטוח שברצונך למחוק את החוו"ד שמילאת?',
                  textAlign: TextAlign.right),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen(this.widget.list)));
                      },
                      child: Text("חזור למסך הבית"),
                    ),
                  ],
                ),
              );
            }
            else if (_currentOptionButtomBar == 1) {
              //TO DO
            }
          },
        ),
        body: headLine()
      );
      return scaffold;
  }

}