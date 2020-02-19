import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome/src/slides/code_slide/widgets/social_media.dart';



class OrganizerData {
  final String id;
  final String name;
  final String jobDescription;
  final String imageAssetsUrl;
  final Map<SocialMedia, String> socialMedia;

  OrganizerData(
      {this.id, this.name, this.jobDescription, this.imageAssetsUrl, this.socialMedia});
}

class Organizers {
  static OrganizerData santi = OrganizerData(
      id: 'santi',
      name: 'Santiago Núñez',
      imageAssetsUrl: 'assets/images/santi.jpg',
      jobDescription: 'Back-end developer, Lifull Connect',
      socialMedia:
      {
        SocialMedia.twitter: '@santynu',
        SocialMedia.google: 'santiago.nunez@lifullconnect.com',
        SocialMedia.linkedin: 'https://www.linkedin.com/in/santiago-núñez-márquez-55640b10b/',
        SocialMedia.github: 'https://github.com/Santynu'
      }
  );
}

class OrganizerAvatar extends StatelessWidget {
  final OrganizerData data;
  final double radius;

  const OrganizerAvatar(  {Key key, this.data, this.radius = 100}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'image-${data.id}',
      child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(data.imageAssetsUrl),
          )
      ),
    );
  }

}


class Organizer extends StatelessWidget {
  final OrganizerData data;

  const Organizer({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OrganizerAvatar(radius: 100, data: data),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.name,
                style: Theme
                    .of(context)
                    .textTheme
                    .display1,
              ),
              Text(
                data.jobDescription,
                style: Theme
                    .of(context)
                    .textTheme
                    .display2,
              ),
              SizedBox(height: 10),
              ...data.socialMedia.map((type, title) =>
                  MapEntry(type, Padding(
                    padding: EdgeInsets.only(bottom: 8),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SocialMediaIcon(type),
                          SizedBox(width: 8),
                          Text(title, style: Theme
                              .of(context)
                              .textTheme
                              .caption,)
                        ],
                      )
                  ))
              ).values.toList()
            ],
          ),)
        ,
      ]
      ,
    );
  }

}