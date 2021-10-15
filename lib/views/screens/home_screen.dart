import 'package:book_app/models/newbook_model.dart';
import 'package:book_app/models/popularbook_model.dart';
import 'package:book_app/views/constants/color_constant.dart';
import 'package:book_app/views/widgets/bottom_navigation_book_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      bottomNavigationBar: BottomNavigationBookApp(),
      //
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              // MEMBUAT TEXT SAMBUTAN
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 12,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hai Lorem',
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        )),
                    SizedBox(height: 5),
                    Text(
                      'Discover Latest Book',
                      style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: kBlackColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // MEMBUAT CUSTOM TEXFIELD UNTUK SEARCH
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: BoxDecoration(
                  color: kLightGreyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    TextField(
                      maxLengthEnforced: true,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: kBlackColor,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          right: 50,
                          bottom: 8,
                        ),
                        hintText: 'Search Book...',
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: kGreyColor,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child:
                          SvgPicture.asset('assets/svg/background_search.svg'),
                    ),
                    Positioned(
                      top: 8,
                      right: 9,
                      child: SvgPicture.asset(
                          'assets/icons/icon_search_white.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // MEMBUAT TABBAR
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 18,
                // color: Colors.green,
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(right: 10),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: kBlackColor,
                    unselectedLabelColor: kGreyColor,
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    unselectedLabelStyle: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    indicatorColor: kBlackColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('New'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('Trending'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('Best Seller'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              SizedBox(
                height: 20,
              ),

              // MEMBUAT HORIZONTAL LISTVIEW UNTUK DAFTAR BUKU
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                // color: Colors.green,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: newbooks.length,
                  padding: EdgeInsets.only(
                    // left: 25,
                    right: 6,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      height: 210,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: kMainColor,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(newbooks[index].image),
                          )),
                    );
                  },
                ),
              ),
              //
              SizedBox(
                height: 20,
              ),

              // MEMBUAR POPULAR LIST
              // --> Membuat judul Popular
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 25,
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // --> Membuat list buku popular
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                // color: Colors.green,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: populars.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 81,
                        width: MediaQuery.of(context).size.width - 50,
                        color: kBackgroundColor,
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(populars[index].image)),
                                color: kMainColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  populars[index].title,
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: kBlackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  populars[index].author,
                                  style: GoogleFonts.openSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$' + populars[index].price,
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
