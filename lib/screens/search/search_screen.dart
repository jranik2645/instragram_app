import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF262626),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF8E8E93),
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgurl: "Live.png"),
            ],
          ),
          SizedBox(height: 20),

          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 15),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imgurl: "Icon (2).png"),
                    SizedBox(width: 5),
                    Text(
                      "IGTV",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.white, size: 15),
                    SizedBox(width: 5),
                    Text(
                      "Shop",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "Style",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "Auto",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: arrContent.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 124,
                  decoration: BoxDecoration(),
                  child: Image.network(
                    arrContent[index]['img'].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
