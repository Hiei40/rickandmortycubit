import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickandmortycubit/Constans/my_colors.dart';
import '../../data/models/charcters.dart'; // Import the file where Character is defined

class CharcterItem extends StatelessWidget {
  final Character character;

  const CharcterItem({required this.character});

  @override
  Widget build(BuildContext context) {
    // Implement your CharcterItem UI using the character data
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Mycolors.mywhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          color: Mycolors.mygrey,
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
            placeholder: "assets/images/RickAndMortyLoading.gif",
            height: double.infinity,
            image: character.image,
            fit: BoxFit.cover,
          )
              : SizedBox(), // Handle case where image is empty
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          color: Colors.black54,
          child: Text("${character.name}",style: TextStyle(
            height: 1.3,
            fontSize: 16,
            color: Mycolors.mywhite,
            fontWeight: FontWeight.bold,

          ),
     overflow: TextOverflow.ellipsis,
     maxLines: 2,

          ),

        ),
      ),
    );
  }
}
