import 'package:flutter/material.dart';
import 'taj_rambagh_palace.dart';
import 'itc_rajputana.dart';
import 'trident_jaipur.dart';
import 'the_oberoi_rajvilas.dart';
import 'fairmont_jaipur.dart';
import 'samode_haveli.dart';

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels in Jaipur')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            hotelCard(
              context,
              'Taj Rambagh Palace',
              'https://www.remotelands.com/storage/media/3263/conversions/b130617007-banner-size.jpg',
              'A luxury heritage hotel offering a royal experience.',
              5.0,
              TajRambaghPalace(),
            ),
            hotelCard(
              context,
              'ITC Rajputana',
              'https://www.itchotels.com/content/dam/itchotels/in/umbrella/itc/hotels/itcrajputana-jaipur/images/overview/headmast-desktop/Night-shot-poolside.jpg',
              'A beautiful 5-star hotel in the heart of Jaipur.',
              4.7,
              ITCRajputana(),
            ),
            hotelCard(
              context,
              'Trident Jaipur',
              'https://www.tridenthotels.com/-/media/trident-hotel/trident-jaipur/Jaipur-Overview/Spa/Desktop-765x580/pool.jpg',
              'A premium hotel with a scenic view of Mansagar Lake.',
              4.6,
              TridentJaipur(),
            ),
            hotelCard(
              context,
              'The Oberoi Rajvilas',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJb9TOoZhF_TS9qNP9stj_EI9qcB4k4DPlHQ&s',
              'An elegant resort offering luxury in a traditional setting.',
              4.9,
              TheOberoiRajvilas(),
            ),
            hotelCard(
              context,
              'Fairmont Jaipur',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgVRszBuamYr_JwaVCUaxxV0UC4qvlatnHA&s',
              'A grand hotel with opulent architecture and hospitality.',
              4.8,
              FairmontJaipur(),
            ),
            hotelCard(
              context,
              'Samode Haveli',
              'https://static.toiimg.com/thumb/msid-104495263,width-748,height-499,resizemode=4,imgsize-104064/.jpg',
              'A historic boutique hotel with an old-world charm.',
              4.7,
              SamodeHaveli(),
            ),
          ],
        ),
      ),
    );
  }

  Widget hotelCard(BuildContext context, String name, String imageUrl,
      String description, double rating, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
