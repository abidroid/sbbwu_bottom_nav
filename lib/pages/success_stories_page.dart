import 'package:flutter/material.dart';
import 'package:sbbwu_bottom_nav/utility/utility.dart';

class SuccessStoriesPage extends StatelessWidget {
  const SuccessStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemCount: ssList.length,

          separatorBuilder: (context, index){
            return Container(color: Colors.red,height: 10,);
          },
          itemBuilder: (context, index){

            String successStoryUrl = ssList[index];

            return Card(child: Image.network(successStoryUrl));

      })
    );
  }
}
