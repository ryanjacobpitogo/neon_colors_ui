import 'package:flutter/material.dart';

class OpaqueAppBar extends StatelessWidget with PreferredSizeWidget {
  const OpaqueAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: 55,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(
                110,
              ),
              border: Border.all(
                width: 3.5,
                color: Colors.white,
              ),
            ),
            child: Transform.scale(
              scale: 1.3,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                child: Image.asset(
                  'assets/images/icons/back_icon.png',
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: 55,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(
                110,
              ),
              border: Border.all(
                width: 3.5,
                color: Colors.white,
              ),
            ),
            child: Transform.scale(
              scale: 1.3,
              child: InkWell(
                onTap: () {
                },
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                child: Image.asset(
                  'assets/images/icons/hamburger_icon.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(330);
}
