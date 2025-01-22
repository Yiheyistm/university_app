import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/models/noftificationmodel.dart';

class NotificationsPanal extends StatelessWidget {
  const NotificationsPanal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          margin: const EdgeInsets.only(top: 15),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: note[0].images.map(
              (item) {
                return Image.network(
                  item['img'],
                  fit: BoxFit.fill,
                );
              },
            ).toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          margin: const EdgeInsets.only(
            top: 5,
            bottom: 5,
          ),
          height: MediaQuery.of(context).size.height * 0.45,
          child: ListView.builder(
            itemCount: note[0].text.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(10),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ExpansionTile(
                  title: Text(
                    note[0].text[index],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Detailed information about ${note[0].text[index]}',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Addis Ababa Science and Technology University (AASTU) is a prominent institution in Ethiopia, known for its focus on science and technology education.',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'AASTU offers a variety of programs and has a strong emphasis on research and innovation.',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Further details and insights about ${note[0].text[index]} can be found here.',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
