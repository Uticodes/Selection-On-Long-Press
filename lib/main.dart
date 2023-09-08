import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ItemSelectionExampleApp());
}

/// A sample application that utilizes the TableView API.
class ItemSelectionExampleApp extends StatelessWidget {
  /// Creates an instance of the TableView example app.
  const ItemSelectionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Example',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ItemSelectionExample(),
    );
  }
}

class ItemSelectionExample extends StatefulWidget {
  const ItemSelectionExample({super.key});

  @override
  State<ItemSelectionExample> createState() => _ItemSelectionExampleState();
}

class _ItemSelectionExampleState extends State<ItemSelectionExample> {
  String? selectedTitle = "";

  void handleItemSelected(String? title) {
    debugPrint('Selected:: Title: $title');
    selectedTitle = title;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Selection On Long press'),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Selected Tile: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          Text(
                              selectedTitle.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 15,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              '👍',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 110.ms)
                                                .scale(delay: 110.ms),
                                            10.horizontalSpace,
                                            const Text(
                                              '❤️',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 120.ms)
                                                .scale(delay: 120.ms),
                                            10.horizontalSpace,
                                            const Text(
                                              '😂',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 130.ms)
                                                .scale(delay: 130.ms),
                                            10.horizontalSpace,
                                            const Text(
                                              '😮',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 140.ms)
                                                .scale(delay: 140.ms),
                                            10.horizontalSpace,
                                            const Text(
                                              '😢',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 150.ms)
                                                .scale(delay: 150.ms),
                                            10.horizontalSpace,
                                            const Text(
                                              '🙏',
                                              style: TextStyle(fontSize: 30),
                                            )
                                                .animate()
                                                .fade(duration: 160.ms)
                                                .scale(delay: 160.ms),
                                            10.horizontalSpace,
                                            const CircleAvatar(
                                              radius: 18,
                                              child: Icon(
                                                Icons.add,
                                              ),
                                            )
                                                .animate()
                                                .fade(duration: 170.ms)
                                                .scale(delay: 170.ms)
                                          ],
                                        ),
                                      )
                                          .animate()
                                          .fade(duration: 100.ms)
                                          .scale(delay: 100.ms),
                                    ),
                                    5.verticalSpace,
                                    const Card(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8),
                                        child: Text(
                                          'An Example',
                                        ),
                                      ),
                                    ),
                                    5.verticalSpace,
                                    Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        width: 250,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ItemView(
                                              title: 'Star',
                                              icon: Icons.star_border,
                                              onItemClicked: handleItemSelected,
                                            ),
                                            const Divider(
                                              height: 0,
                                              thickness: 0.5,
                                            ),
                                            ItemView(
                                              title: 'Reply',
                                              icon: Icons.reply,
                                              onItemClicked: handleItemSelected,
                                            ),
                                            const Divider(
                                              height: 0,
                                              thickness: 0.5,
                                            ),
                                            ItemView(
                                              title: 'Forward',
                                              icon: Icons.reply,
                                              onItemClicked: handleItemSelected,
                                            ),
                                            const Divider(
                                              height: 0,
                                              thickness: 0.5,
                                            ),
                                            ItemView(
                                              title: 'Copy',
                                              icon: Icons.copy,
                                              onItemClicked: handleItemSelected,
                                            ),
                                            const Divider(
                                              height: 0,
                                              thickness: 0.5,
                                            ),
                                            ItemView(
                                              title: 'Report',
                                              icon: Icons.warning,
                                              onItemClicked: handleItemSelected,
                                            ),
                                            const Divider(
                                              height: 0,
                                              thickness: 0.5,
                                            ),
                                            ItemView(
                                              title: 'Delete',
                                              icon: Icons.delete,
                                              textColor: Colors.red,
                                              onItemClicked: handleItemSelected,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                        .animate()
                                        .fade(duration: 160.ms)
                                        .scale(delay: 160.ms)
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Text(
                              'An Example',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}


class ItemView extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? textColor;
  final Function(String title) onItemClicked;
  const ItemView({super.key, required this.title, required this.icon, required this.onItemClicked, this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClicked(title);
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 8),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
          children: [
            Text(
              title.toString(),
              style: TextStyle(
                color: textColor ?? Colors.white,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
