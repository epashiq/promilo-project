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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescreptionListWidget(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(Icons.bookmark_border_outlined),
                  const Text('1034'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(Icons.favorite_outline),
                  const Text('1034'),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: List.generate(5, (index) {
                        int descendingIndex = 5 - index - 1;
                        return Icon(
                          Icons.star,
                          size: 16,
                          color: const Color.fromARGB(255, 39, 193, 201)
                              .withOpacity(descendingIndex / 5),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('3.2'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Actor Name',
                style: TextStyle(
                    color: AppTheme.text, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Indain Actress',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(Icons.alarm_rounded),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Duration 20 Mins',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(Icons.wallet),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Total Average Fess 9,999',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'About',
                style: TextStyle(
                    color: AppTheme.text, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'From cardiovasclar health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering ehat are the benefits of going on a surf camp.',
                  style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
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
