import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipRectBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    // TODO: implement build
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: AspectRatio(
            aspectRatio: 16/7,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage('https://pulseservicesbd.com/upload/ad_image/banner.jpeg')),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
            ),
          ),
        ),
      )
  );
}