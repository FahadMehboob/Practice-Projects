import 'package:ecommerce_ui/screens/home/widgets/banner_indicator.dart';
import 'package:ecommerce_ui/screens/home/widgets/banner_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});
   int currentIndex =0;
    List< String> bannerItems = ['banner1.jpg', 'banner2.jpg', 'banner3.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: const Text("Ecommerce App UI"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Badge(
              label: Text("10"),
              child: Icon(
                CupertinoIcons.bell,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Search Box
          Container(
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none,
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                hintText: "Search",
              ),
            ),
          ),

          //Banners
          SizedBox(
            height: 150,
            child: PageView(
              onPageChanged: (value){
                setState(){
                  currentIndex = value;
                }
              },
              children:  [
              for(String banner in bannerItems)
                BannerItem(image: banner),
              ],
            ),
          ),

          //Banners indicator
          SizedBox(
            height: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 BannerIndicator(),
                 BannerIndicator(),
                 BannerIndicator(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
