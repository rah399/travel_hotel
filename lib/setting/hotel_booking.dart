import 'package:flutter/material.dart';
import 'package:travles_v1/detele/fairmont_jaipur.dart';
import 'package:travles_v1/detele/itc_rajputana.dart';
import 'package:travles_v1/detele/samode_haveli.dart';
import 'package:travles_v1/detele/taj_rambagh_palace.dart';
import 'package:travles_v1/detele/the_oberoi_rajvilas.dart';
import 'package:travles_v1/detele/trident_jaipur.dart';

class HotelPage1 extends StatelessWidget {
  final List<Map<String, dynamic>> hotels = [
    {
      'name': 'Taj Rambagh Palace',
      'image':
          'https://www.remotelands.com/storage/media/3263/conversions/b130617007-banner-size.jpg',
      'description': 'A luxury heritage hotel offering a royal experience.',
      'rating': 5.0,
      'page': TajRambaghPalace(),
    },
    {
      'name': 'ITC Rajputana',
      'image':
          'https://www.itchotels.com/content/dam/itchotels/in/umbrella/itc/hotels/itcrajputana-jaipur/images/overview/headmast-desktop/Night-shot-poolside.jpg',
      'description': 'A beautiful 5-star hotel in the heart of Jaipur.',
      'rating': 4.7,
      'page': ITCRajputana(),
    },
    {
      'name': 'Trident Jaipur',
      'image':
          'https://www.tridenthotels.com/-/media/trident-hotel/trident-jaipur/Jaipur-Overview/Spa/Desktop-765x580/pool.jpg',
      'description': 'A premium hotel with a scenic view of Mansagar Lake.',
      'rating': 4.6,
      'page': TridentJaipur(),
    },
    {
      'name': 'The Oberoi Rajvilas',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJb9TOoZhF_TS9qNP9stj_EI9qcB4k4DPlHQ&s',
      'description':
          'An elegant resort offering luxury in a traditional setting.',
      'rating': 4.9,
      'page': TheOberoiRajvilas(),
    },
    {
      'name': 'Fairmont Jaipur',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgVRszBuamYr_JwaVCUaxxV0UC4qvlatnHA&s',
      'description': 'A grand hotel with opulent architecture and hospitality.',
      'rating': 4.8,
      'page': FairmontJaipur(),
    },
    {
      'name': 'Samode Haveli',
      'image':
          'https://static.toiimg.com/thumb/msid-104495263,width-748,height-499,resizemode=4,imgsize-104064/.jpg',
      'description': 'A historic boutique hotel with an old-world charm.',
      'rating': 4.7,
      'page': SamodeHaveli(),
    },
    {
      'name': 'Taj Rambagh Palace',
      'image':
          'https://www.remotelands.com/storage/media/3263/conversions/b130617007-banner-size.jpg',
      'description': 'A luxury heritage hotel offering a royal experience.',
      'rating': 5.0,
      'page': TajRambaghPalace(),
    },
    {
      'name': 'ITC Rajputana',
      'image':
          'https://www.itchotels.com/content/dam/itchotels/in/umbrella/itc/hotels/itcrajputana-jaipur/images/overview/headmast-desktop/Night-shot-poolside.jpg',
      'description': 'A beautiful 5-star hotel in the heart of Jaipur.',
      'rating': 4.7,
      'page': ITCRajputana(),
    },
    {
      'name': 'Trident Jaipur',
      'image':
          'https://www.tridenthotels.com/-/media/trident-hotel/trident-jaipur/Jaipur-Overview/Spa/Desktop-765x580/pool.jpg',
      'description': 'A premium hotel with a scenic view of Mansagar Lake.',
      'rating': 4.6,
      'page': TridentJaipur(),
    },
    {
      'name': 'The Oberoi Rajvilas',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJb9TOoZhF_TS9qNP9stj_EI9qcB4k4DPlHQ&s',
      'description':
          'An elegant resort offering luxury in a traditional setting.',
      'rating': 4.9,
      'page': TheOberoiRajvilas(),
    },
    {
      'name': 'Fairmont Jaipur',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgVRszBuamYr_JwaVCUaxxV0UC4qvlatnHA&s',
      'description': 'A grand hotel with opulent architecture and hospitality.',
      'rating': 4.8,
      'page': FairmontJaipur(),
    },
    {
      'name': 'Samode Haveli',
      'image':
          'https://static.toiimg.com/thumb/msid-104495263,width-748,height-499,resizemode=4,imgsize-104064/.jpg',
      'description': 'A historic boutique hotel with an old-world charm.',
      'rating': 4.7,
      'page': SamodeHaveli(),
    },
    {
      'name': 'Taj Rambagh Palace',
      'image':
          'https://www.remotelands.com/storage/media/3263/conversions/b130617007-banner-size.jpg',
      'description': 'A luxury heritage hotel offering a royal experience.',
      'rating': 5.0,
      'page': TajRambaghPalace(),
    },
    {
      'name': 'ITC Rajputana',
      'image':
          'https://www.itchotels.com/content/dam/itchotels/in/umbrella/itc/hotels/itcrajputana-jaipur/images/overview/headmast-desktop/Night-shot-poolside.jpg',
      'description': 'A beautiful 5-star hotel in the heart of Jaipur.',
      'rating': 4.7,
      'page': ITCRajputana(),
    },
    {
      'name': 'Trident Jaipur',
      'image':
          'https://www.tridenthotels.com/-/media/trident-hotel/trident-jaipur/Jaipur-Overview/Spa/Desktop-765x580/pool.jpg',
      'description': 'A premium hotel with a scenic view of Mansagar Lake.',
      'rating': 4.6,
      'page': TridentJaipur(),
    },
    {
      'name': 'The Oberoi Rajvilas',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJb9TOoZhF_TS9qNP9stj_EI9qcB4k4DPlHQ&s',
      'description':
          'An elegant resort offering luxury in a traditional setting.',
      'rating': 4.9,
      'page': TheOberoiRajvilas(),
    },
    {
      'name': 'Fairmont Jaipur',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgVRszBuamYr_JwaVCUaxxV0UC4qvlatnHA&s',
      'description': 'A grand hotel with opulent architecture and hospitality.',
      'rating': 4.8,
      'page': FairmontJaipur(),
    },
    {
      'name': 'Samode Haveli',
      'image':
          'https://static.toiimg.com/thumb/msid-104495263,width-748,height-499,resizemode=4,imgsize-104064/.jpg',
      'description': 'A historic boutique hotel with an old-world charm.',
      'rating': 4.7,
      'page': SamodeHaveli(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels in Jaipur')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(), // Prevent scrolling conflict
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75, // Adjust for better spacing
          ),
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            var hotel = hotels[index];
            return buildHotelCard(
              context,
              hotel['name'],
              hotel['image'],
              hotel['description'],
              hotel['rating'],
              hotel['page'],
            );
          },
        ),
      ),
    );
  }

  Widget buildHotelCard(BuildContext context, String name, String imageUrl,
      String description, double rating, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              // Wrap Column in Expanded to prevent overflow
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Prevent overflow
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 14),
                        SizedBox(width: 4),
                        Text(rating.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
