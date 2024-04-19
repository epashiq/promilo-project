import 'package:flutter/material.dart';
import 'package:promilo_project/core/theme/theme.dart';
import 'package:promilo_project/view/widgets/list_view_widget.dart';
import 'package:promilo_project/view/widgets/meetup_list_widget.dart';
import 'package:promilo_project/view/widgets/textfield_widget.dart';
import 'package:promilo_project/view/widgets/top_trending_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const SingleChildScrollView(
        child: Padding(
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
                height: 20,
              ),
              Text('Top Trending Meetups ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.text,
                      fontSize: 18)),
              SizedBox(
                height: 15,
              ),
              TopTrendingListWidget()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.window,
            color: Colors.black,
          ),
          label: 'Prolet',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.handshake_outlined,
            color: Colors.black,
          ),
          label: 'Meetup',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.file_open_outlined,
            color: Colors.black,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
            color: Colors.black,
          ),
          label: 'Account',
        ),
      ]),
    );
  }
}
