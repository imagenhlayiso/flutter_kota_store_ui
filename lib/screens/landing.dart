// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_adv_ui/custom/border_box.dart';
import 'package:simple_adv_ui/custom/choice_options.dart';
import 'package:simple_adv_ui/custom/float_%20button.dart';
import 'package:simple_adv_ui/custom/items_card.dart';
import 'package:simple_adv_ui/utils/constants.dart';
import 'package:simple_adv_ui/utils/sample_data.dart';
import 'package:simple_adv_ui/utils/widgets_functions.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double padding = 20.0;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: size.width,
                ),
                Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderBox(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          color: COLOR_BLACK,
                        ),
                      ),
                      BorderBox(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.settings,
                          color: COLOR_BLACK,
                        ),
                      ),
                    ],
                  ),
                ),
                addVertivalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "City",
                    style: theme.textTheme.bodyText2,
                  ),
                ),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "Joburg",
                    style: TEXT_THEME_DATA.headline1,
                  ),
                ),
                Padding(
                  padding: sidePadding,
                  child: Divider(
                    color: COLOR_GREY,
                    height: padding,
                  ),
                ),
                addVertivalSpace(10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      "Soweto",
                      "Gold Reef",
                      "Sandton",
                      "CBD",
                      "The North Side"
                    ].map((e) => ChoiceOptions(text: e)).toList(),
                  ),
                ),
                addVertivalSpace(10),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                      itemCount: KOTA_DATA.length,
                      itemBuilder: (context, index) {
                        return ItemCard(
                          itemData: KOTA_DATA[index],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              width: size.width,
              child: Center(
                child: OptionButton(
                  text: "MAPView",
                  width: 150,
                  icon: Icons.map_outlined,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
