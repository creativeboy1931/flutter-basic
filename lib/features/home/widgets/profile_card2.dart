
import 'package:basic/data/model/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileCard1 extends StatelessWidget {
  final String name;
  final String city;
  final String imgUrl;
  final bool liked;
  const ProfileCard1({super.key,required this.name,required this.city,required this.imgUrl,this.liked = false});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 0.1,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    child: GestureDetector(onTap: null,child: Stack(clipBehavior:Clip.none,children: [

      //profile images
    ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Image.network(
            imgUrl,
            // "https://randomuser.me/api/portraits/men/9.jpg",
            // height: double.infinity,  // Height of the profile image
            width: double.infinity,
            fit: BoxFit.fitHeight,
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                // In case of an error, display a placeholder image or a text
                return Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 20,
                  ),
                );
            },
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  // If loading is complete, show the image
                  return child;
                } else {
                  // While loading, show a circular progress indicator
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }}
          ),
        ),
      //Name city
      Positioned(
        bottom: 0,
          left: 0,
          child: Row(children: [
        //name
        Column(children: [Text(name),Text(city)],),
        //like icon
        IconButton(onPressed: null, icon: liked?Icon(Icons.favorite):Icon(Icons.favorite_border))
      ],))
    ],),),
    );
  }
}


/*class ProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  ProfileCard({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.none,  // Ensures the image overflows if necessary
        children: [
          // Profile image at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                height: 150,  // Height of the profile image
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Title in the middle
          Positioned(
            left: 16,
            right: 16,
            top: 100,  // Position below the image
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Subtitle at the bottom left
          Positioned(
            left: 16,
            bottom: 16,
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
