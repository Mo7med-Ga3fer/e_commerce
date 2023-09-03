import 'package:e_commerce/feature/home/presentation/views/widgets/selling_item.dart';
import 'package:flutter/material.dart';

class TopSellingList extends StatelessWidget {
  const TopSellingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 282,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: SellingItem(),
          );
        }
      ),
    );
  }
}