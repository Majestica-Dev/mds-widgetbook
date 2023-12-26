import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleDisplay(
      height: 620,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //Size M
          ExampleItem(
            children: [
              Text('Divider'),
              Text('Size M - 1px'),
            ],
          ),
          ExampleItem(
            axis: Axis.vertical,
            children: [
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MDSDivider(),
              ),
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MDSDivider(),
              ),
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
            ],
          ),

          //Size S
          SizedBox(
            height: 50,
          ),
          ExampleItem(
            children: [
              Text('Divider'),
              Text('Size S - 0.5px'),
            ],
          ),
          ExampleItem(
            axis: Axis.vertical,
            children: [
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MDSDivider(
                  size: DividerSize.S,
                ),
              ),
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MDSDivider(
                  size: DividerSize.S,
                ),
              ),
              Text(
                ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
            ],
          )
        ],
      ),
    );
  }
}
