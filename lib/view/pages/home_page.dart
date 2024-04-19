import 'package:flutter/material.dart';
import 'package:promilo_project/core/theme/theme.dart';
import 'package:promilo_project/view/widgets/list_view_widget.dart';
import 'package:promilo_project/view/widgets/meetup_list_widget.dart';
import 'package:promilo_project/view/widgets/textfield_widget.dart';

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Individual Meetup',
            style:
                TextStyle(color: AppTheme.text, fontWeight: FontWeight.w500)),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(),
            SizedBox(
              height: 20,
            ),
            ListViewWidget(),
            SizedBox(
              height: 10,
            ),
            Text('Trending Popular People',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.text,
                    fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            MeetupListWidget(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
