import 'package:flutter/material.dart';
import 'package:kupa/utils/constants.dart';
import 'package:kupa/widgets/space.dart';

class HomePage extends StatelessWidget {
  final double screenWidth;
  const HomePage({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double spaceHeight = 20.0;
    var padding = EdgeInsets.symmetric(horizontal: spaceHeight);
    final List<BoxShadow> boxShadow = [
      const BoxShadow(
        color: sage,
        offset: Offset(
          15.0,
          20.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ), //BoxShadow
      const BoxShadow(
        color: green,
        offset: Offset(0.0, 10.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VerticalSpacing(height: spaceHeight),
        Padding(
          padding: padding,
          child: screenWidth < 500
              ? const SearchBar(
                  hintText: 'Semovita',
                  leading: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.search),
                  ),
                  elevation: MaterialStatePropertyAll(1),
                )
              : const Center(
                  child: SearchBar(
                    hintText: 'Semovita',
                    leading: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.search),
                    ),
                    elevation: MaterialStatePropertyAll(1),
                  ),
                ),
        ),
        const VerticalSpacing(
          height: 30.0,
        ),
        Padding(
          padding: padding,
          child: Container(
            // height: 100,
            // width: 480,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: green,
              boxShadow: boxShadow,
            ),
            // color: green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpacing(
                  height: spaceHeight,
                ),
                Padding(
                  padding: padding,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deliver to your House',
                        style: TextStyle(color: colorWhite, fontSize: 26),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: colorWhite,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: padding,
                  child: const Text(
                    '71,Aroloya Street, Lagos Island.',
                    style: TextStyle(color: colorWhite, fontSize: 16),
                  ),
                ),
                const VerticalSpacing(
                  height: 10.0,
                ),
                Padding(
                  padding: padding,
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text('Add to cart'),
                    )),
                  ),
                  // child: ElevatedButton(
                  //
                  //   onPressed: () {},
                  //   style: const ButtonStyle(
                  //     elevation: MaterialStatePropertyAll(0),
                  //     backgroundColor:
                  //         MaterialStatePropertyAll<Color>(Colors.green),
                  //     splashFactory: InkRipple.splashFactory,
                  //   ),
                  //   child: const Text(
                  //     'Add to cart',
                  //     style: TextStyle(color: colorBlack),
                  //   ),
                  // ),
                ),
                const VerticalSpacing(
                  height: 10.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
