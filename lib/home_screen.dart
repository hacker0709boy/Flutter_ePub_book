import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_model.dart';
import 'package:flutter_application_1/custom_tab_indicator.dart';
import 'package:flutter_application_1/selected_book.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_model.dart';
import 'package:dio/dio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Educids E-Books",
                        style: GoogleFonts.openSans(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text("Discover Latest Book",
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                )),
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 226, 221, 221)),
              child: Stack(children: <Widget>[
                TextField(
                  maxLengthEnforced: true,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 19, right: 50, bottom: 8),
                    border: InputBorder.none,
                    hintText: "Search Books...",
                    hintStyle: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 110, 108, 108),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: Icon(Icons.search),
                  bottom: 8,
                )
              ]),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: GoogleFonts.openSans(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.openSans(
                        fontSize: 14, fontWeight: FontWeight.w600),
                    indicator: RoundedRectangleTabIndicator(
                        weight: 2, width: 30, color: Colors.black),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text(
                            'New',
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text(
                            'Tranding Books',
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text(
                            'Popular Books',
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 21),
                height: 210,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 25, right: 6),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: newbooks.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(right: 19),
                          height: 210,
                          width: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white24,
                              image: DecorationImage(
                                image: AssetImage(newbooks[index].image),
                              )));
                    })),
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 25.0),
              child: Text("Popular books",
                  style: GoogleFonts.openSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            ListView.builder(
                padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: newbooks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      EpubViewer.setConfig(
                        themeColor: Theme.of(context).primaryColor,
                        identifier: "iosBook",
                        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                        allowSharing: true,
                        enableTts: true,
                        nightMode: false,
                        //setShowRemainingIndicator: true
                      );

                      //get current locator
                      EpubViewer.locatorStream.listen((locator) {
                        print(
                            'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                      });

                      await EpubViewer.openAsset(
                        newbooks[index].epub,
                        lastLocation: EpubLocator.fromJson({
                          "bookId": "2239",
                          "href": "/OEBPS/ch06.xhtml",
                          "created": 1539934158390,
                          "locations": {
                            "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                          }
                        }),
                      );
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => SelectedBookScreen(
                      //                 book: newbooks[index],
                      //               )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 19),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 50,
                      color: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 105,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(newbooks[index].image),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                newbooks[index].name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
