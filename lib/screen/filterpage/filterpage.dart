import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/style/k_size.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  SfRangeValues _values = const SfRangeValues(0, 1000);
  bool isChecked = false;
  // ignore: prefer_typing_uninitialized_variables
  var selectIndex;
  // ignore: prefer_typing_uninitialized_variables
  var brandIndex;
  // ignore: prefer_typing_uninitialized_variables
  var selectColorIndex;
  List<Map<String, dynamic>> myOrder = [
    {"text": "XS"},
    {"text": "M"},
    {"text": "L"},
    {"text": "XL"},
  ];
  List<Map<String, dynamic>> brand = [
    {"text": "Zara"},
    {"text": "Nike"},
    {"text": "Pata"},
  ];
  List<Map<String, dynamic>> colors1 = [
    {"color1": Colors.blue},
    {"color1": Colors.red},
    {"color1": Colors.green},
    {"color1": Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
          iconSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: () {
              null;
            },
            icon: FaIcon(
              FontAwesomeIcons.times,
              color: Colors.grey[800],
            ),
            iconSize: 20,
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(KSize.getWidth(context, 11)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: KSize.getWidth(context, 17)),
                child: const Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: KSize.getWidth(context, 18),
                        top: KSize.getWidth(context, 18)),
                    child: const Text(
                      "PRICE RANGE",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(KSize.getWidth(context, 4)),
                    child: SfRangeSlider(
                      min: 0,
                      max: 1000,
                      values: _values,
                      interval: 20,
                      showTicks: false,
                      showLabels: false,
                      enableTooltip: true,
                      tooltipShape: const SfPaddleTooltipShape(),

                      //tooltipTextFormatterCallback: ,
                      minorTicksPerInterval: 1,
                      onChanged: (SfRangeValues values) {
                        setState(() {
                          _values = values;
                        });
                      },
                      activeColor: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: KSize.getWidth(context, 18),
                    top: KSize.getWidth(context, 15),
                    right: KSize.getWidth(context, 18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "BRANDS",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Select All",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ...List.generate(
                      brand.length,
                      (index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectIndex = index;
                                    //newChecked = false;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: KSize.getWidth(context, 18),
                                      top: KSize.getWidth(context, 12)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            KSize.getWidth(context, 5)),
                                        child: Text(
                                          brand[index]['text'],
                                          style: TextStyle(
                                            color: selectIndex == index
                                                ? Colors.redAccent
                                                : Colors.grey,
                                          ),
                                        ),
                                      ),
                                      selectIndex == index
                                          ? Padding(
                                              padding: EdgeInsets.only(
                                                  right: KSize.getWidth(
                                                      context, 25)),
                                              child: const Icon(
                                                Icons.check,
                                                color: Colors.redAccent,
                                              ))
                                          : Container()
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: KSize.getWidth(context, 18),
                                    right: KSize.getWidth(context, 18)),
                                child: const Divider(
                                  color: Colors.grey,
                                  thickness: 0.6,
                                  height: 3,
                                  endIndent: 2,
                                  indent: 1,
                                ),
                              )
                            ],
                          ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 20, right: 18),
                child: Text(
                  "SIZES",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(children: [
                ...List.generate(
                    myOrder.length,
                    (index) => Padding(
                        padding: const EdgeInsets.only(left: 18.5, top: 15),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                brandIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 52,
                              width: 53,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: brandIndex == index
                                    ? Colors.redAccent
                                    : Colors.grey[200],
                              ),
                              child: Text(
                                myOrder[index]['text'],
                                style: TextStyle(
                                    color: brandIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            )))),
              ]),
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 20, right: 18),
                child: Text(
                  "COLORS",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(children: [
                ...List.generate(
                    colors1.length,
                    (index) => Padding(
                        padding: const EdgeInsets.only(left: 18.5, top: 15),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectColorIndex = index;
                              });
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 52,
                                width: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: colors1[index]['color1'],
                                ),
                                child: selectColorIndex == index
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )
                                    : Container())))),
              ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: KSize.getHeight(context, 15),
          right: KSize.getHeight(context, 15),
          top: KSize.getHeight(context, 5),
          bottom: KSize.getHeight(context, 5),
        ),
        child: Kbutton(
          getWidth: KSize.getWidth(context, 180),
          getHeight: KSize.getHeight(context, 55),
          cdColor: Colors.redAccent,
          dbColor: Colors.redAccent,
          kbuttonTap: () {},
          tcolor: Colors.white,
          text: "Apply",
        ),
      ),
    );
  }
}
