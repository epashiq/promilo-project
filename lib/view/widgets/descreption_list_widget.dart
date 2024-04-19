import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_project/view/widgets/dot_indicator_widget.dart';
import 'package:share_plus/share_plus.dart';

class DescreptionListWidget extends ConsumerWidget {
  const DescreptionListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 370,
      padding: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 209, 209, 209),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(16), bottom: Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 320,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                final imageUrls = [
                  'https://tse4.mm.bing.net/th?id=OIP.RHXoCurFLHz4JTMOowvYaAHaEo&pid=Api&P=0&h=180',
                  'https://tse3.mm.bing.net/th?id=OIP.pSYGouphrE4GdncfRjpK-AHaEo&pid=Api&P=0&h=180',
                  'https://tse2.mm.bing.net/th?id=OIP.L3f9fulkqcuLUl3L3LhNaAHaEK&pid=Api&P=0&h=180',
                  'https://tse3.mm.bing.net/th?id=OIP.s6drW-EZMC5HlkA6r-tf4wHaFj&pid=Api&P=0&h=180',
                  'https://tse1.mm.bing.net/th?id=OIP.tmjcQcM-3S7Dk6Y10frzGQHaE8&pid=Api&P=0&h=180',
                ];
                return Container(
                  padding: const EdgeInsets.all(8),
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(imageUrls[index]),
                          fit: BoxFit.cover)),
                  child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: DotsIndicatorWidget()),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.file_download_outlined,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.bookmark_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.favorite_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              const Icon(
                Icons.filter_center_focus_outlined,
                size: 28,
                color: Colors.black,
              ),
              const Icon(
                Icons.star_outline,
                size: 28,
                color: Colors.black,
              ),
              InkWell(
                onTap: () async {
                  await Share.share(
                    'Share to',
                  );
                },
                child: const Icon(
                  Icons.share_outlined,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
