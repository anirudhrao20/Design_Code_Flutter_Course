import 'package:design_code_course/components/cards/explore_course_card.dart';
import 'package:design_code_course/model/course.dart';
import 'package:flutter/material.dart';

class ExploreCourseList extends StatefulWidget {
  @override
  _ExploreCourseListState createState() => _ExploreCourseListState();
}

class _ExploreCourseListState extends State<ExploreCourseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },

      ),
    );
  }
}