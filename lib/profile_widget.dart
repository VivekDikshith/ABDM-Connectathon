import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget
{
  final String imagePath;

  const ProfileWidget({Key? key, required this.imagePath}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildImage(),
    );
  }

  Widget buildImage(){
    final image = AssetImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,),
      ),
    );
  }

}