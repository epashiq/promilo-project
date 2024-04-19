import 'package:flutter/material.dart';
import 'package:promilo_project/view/pages/descreption_page.dart';

class TopTrendingListWidget extends StatelessWidget {
  const TopTrendingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DescreptionPage(),
                      ));
                },
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://tse1.mm.bing.net/th?id=OIP.oMfihQWL0WCH5l-m91Os5gHaHa&pid=Api&P=0&h=180'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 5),
    );
  }
}
