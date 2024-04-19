import 'package:flutter/material.dart';
import 'package:promilo_project/view/widgets/descreption_list_widget.dart';

import '../../core/theme/theme.dart';

class DescreptionPage extends StatelessWidget {
  const DescreptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Descreption',
          style: TextStyle(color: AppTheme.text, fontWeight: FontWeight.w500),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DescreptionListWidget(),
            Row(
              children: [
                Icon(Icons.bookmark_border_outlined),
                Text('1034'),
                Icon(Icons.favorite_outline),
                Text('1034'),
                Text('3.2'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Actor Name',
              style:
                  TextStyle(color: AppTheme.text, fontWeight: FontWeight.w500),
            ),
             SizedBox(
              height: 10,
            ),
            Text('Indain Actress',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 15,),
            Row(
              children: [
                Icon(Icons.alarm_rounded),
                Text('Duration 20 Mins',style: TextStyle(color: Colors.grey),)
              ],
            ),
             SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.wallet),
                Text('Total Average Fess 9,999',style: TextStyle(color: Colors.grey),)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'About',
              style:
                  TextStyle(color: AppTheme.text, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
