import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_model.dart';
import 'package:dio/dio.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter_application_1/download.dart';

import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectedBookScreen extends StatelessWidget {
  bool _isLoading = false;

  final Book book;

  SelectedBookScreen({required this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white38,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.blue,
                  child: Stack(children: <Widget>[
                    Positioned(
                      left: 25,
                      top: 25,
                      child: GestureDetector(
                        onTap: (() {}),
                        child: Container(
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 75),
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(book.image),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        book.name,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      child: Text(
                        "Book detailes for you!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(book.rating),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      child: Text(
                        "Book Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                      child: Text(
                        book.description,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            height: 2,
                            letterSpacing: 1.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          padding: EdgeInsets.only(
                            left: 45,
                            right: 45,
                          ),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DownloadRead()));
                          },
                          child: Text(
                            "Read Now",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                        ),

                        // RaisedButton(
                        //   color: Colors.blue,
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(30)),
                        //   onPressed: () {
                        //     showDialog(
                        //       context: context,
                        //       builder: (context) => const DownloadDialog(),
                        //     );
                        //   },
                        //   child: Text("Download Now"),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
