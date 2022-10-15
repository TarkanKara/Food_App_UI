import 'package:flutter/material.dart';

class HomeAppBarrWidget extends StatefulWidget {
  String dropdownvalue = 'Location, Main City-Napgur';
  var items = [
    'Location, Main City-Napgur',
    'İSTANBUL',
    'ANKARA',
    'İZMİR',
  ];
  HomeAppBarrWidget({super.key});

  @override
  State<HomeAppBarrWidget> createState() => _HomeAppBarrWidgetState();
}

class _HomeAppBarrWidgetState extends State<HomeAppBarrWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi Noha!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    child: Image.asset(
                      "assets/images/ep_location.png",
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: SizedBox(
                      height: 30,
                      child: DropdownButton(
                        value: widget.dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: widget.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            widget.dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          BellFill_Widget(
            imageAsset: Image.asset("assets/images/Bell_fill.png"),
            ttextt: "5",
          ),
        ],
      ),
    );
  }
}

class BellFill_Widget extends StatelessWidget {
  final Function? onPress;
  final Image imageAsset;
  final String ttextt;
  const BellFill_Widget({
    Key? key,
    this.onPress,
    required this.imageAsset,
    required this.ttextt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: IconButton(
            onPressed: () {
              onPress;
            },
            icon: imageAsset,
          ),
        ),
        Positioned(
          left: 21,
          child: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.red,
            ),
            child: Text(
              ttextt,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}