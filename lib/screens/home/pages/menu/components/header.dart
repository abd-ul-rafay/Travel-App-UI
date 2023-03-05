
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: myDouble),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/designed_menu.svg',
                color: Theme.of(context).iconTheme.color,
                // we will use size object to make proper width and height
                width: size.width * 0.08,
                height: size.width * 0.08,
              ),

              // we are making a circular container to add image(dp) inside
              Container(
                // we will use size object to make proper width and height
                width: size.width * 0.1,
                height: size.width * 0.1,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/my_img.jpg',),
                    fit: BoxFit.cover
                  )
                ),
              )
            ],
          ),
        )
    );
  }
}
