// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:simple_adv_ui/custom/border_box.dart';
import 'package:simple_adv_ui/utils/constants.dart';

class ItemCard extends StatelessWidget {
  final dynamic itemData;
  const ItemCard({super.key, this.itemData});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: SizedBox(
                  width: 500,
                  height: 400,
                  child: Image.asset(
                    itemData['image'],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.favorite_border,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                itemData['store'].toString(),
                style: TEXT_THEME_DATA.headline1,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                itemData["address"],
                style: TEXT_THEME_DATA.bodyText2,
              ),
            ],
          ),
          SizedBox(
            height: 7.5,
          ),
          Row(
            children: [
              Text(
                itemData['description'],
                style: TEXT_THEME_DATA.bodyText1,
              )
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: COLOR_GREY,
          )
        ],
      ),
    );
  }
}
