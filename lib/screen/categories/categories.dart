import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoba_flutter/model/category_model.dart';
import 'package:zoba_flutter/style/k_color.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categoryList = ['All', 'Women', 'Men', 'Kids'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kColor.secondary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Categories',
                  style: KTextStyle.headline6,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: List.generate(categoryList.length, (index) => Row(
                            children: [
                              Text(
                                categoryList[index],
                                style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                  fontSize: 18,
                                  color: index == 0
                                      ? kColor.primary
                                      : kColor.accentColor,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                              const SizedBox(
                                width: 40,
                              )
                            ],
                          ))
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, bottom: 20),
                  child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: 2.5,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    children: categories.map((e) {
                      return categoryCard(e);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categoryCard(Category category) {
    return Container(
      padding:const EdgeInsets.only(bottom: 20),
      child: Stack(children: [
        Positioned(
          bottom: 5,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kColor.secondary,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 25,
                      
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      category.name.toString(),
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColor.accentColor.withOpacity(0.9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      category.totalItems.toString() + " items",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: kColor.accentColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              color: kColor.primary,
            ),
            child:const Center(
              child: Icon(Icons.arrow_forward_ios,color: kColor.secondary,),
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 10,
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: kColor.containerBackgroundLite,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(category.image.toString()),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ]),
    );
  }
}