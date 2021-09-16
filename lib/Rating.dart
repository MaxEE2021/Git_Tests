import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  // Rating({Key? key}) : super(key: key);
  final int maxRating;
  final Function(int) onRatingSelected;

  //initialazer constructor
  Rating(this.onRatingSelected,[this.maxRating = 5]);

  @override
  _RatingState createState() => _RatingState();
}






// class widget, creates and displays the rating
class _RatingState extends State<Rating> {

  int _currentRaring = 0;

  Widget _buildRatingStar(int index) {

    if (index < _currentRaring){
      return Icon(Icons.star, color: Colors.orange);
    }
    else{
      return Icon(Icons.star_border_outlined); 
    }
  }



  Widget _BuildBody(){

    final stars = List<Widget>.generate(this.widget.maxRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRaring = index + 1;
          });
          this.widget.onRatingSelected(_currentRaring);
        },
      );
    });

    return Row(children: stars, mainAxisAlignment: MainAxisAlignment.center,);

  }

  @override
  Widget build(BuildContext context) {
    return _BuildBody();  // we need to create our own "_Buildbody" function
  }
}