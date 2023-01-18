import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  StarRating({this.starCount = 5, this.rating = .0, required this.onRatingChanged, required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).colorScheme.background,
        size: 0.13*MediaQuery.of(context).size.width,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: 0.13*MediaQuery.of(context).size.width,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: 0.13*MediaQuery.of(context).size.width,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}


class Rating extends StatefulWidget {
  @override
  _RatingState createState() => new _RatingState();
}

class _RatingState extends State<Rating> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return new StarRating(
      color: Colors.yellow,
      rating: rating,
      onRatingChanged: (rating) => setState(() => this.rating = rating),
    );
  }
}


