import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<String> _tab = [
    'Food',
    'Electronics',
    'Grocerries',
    'Dress',
    'Accesories'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Shafi.',
                style: GoogleFonts.raleway(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Let's gets something?",
                style: GoogleFonts.raleway(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFFF46D38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0, top: 8),
                            child: Text(
                              '40% Off During \nCovid 19',
                              style: GoogleFonts.raleway(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                'assets/fruits-and-vegetables 1.png',
                                width: 180,
                              ),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFF3861F4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0, top: 8),
                            child: Text(
                              '40% Off During \nCovid 19',
                              style: GoogleFonts.raleway(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                'assets/fruits-and-vegetables 1.png',
                                width: 180,
                              ),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: GoogleFonts.raleway(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'View All',
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF4800),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _tab.length,
                    itemBuilder: (_, index1) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25.0, right: 25, top: 7, bottom: 6),
                            child: Center(
                              child: Text(
                                _tab[index1],
                                style: GoogleFonts.raleway(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.75,
                        crossAxisCount: 2,
                        mainAxisSpacing: 70,
                        crossAxisSpacing: 20),
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 210,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF393939),
                                blurRadius: 1,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              ),
                            ]),
                        child: Stack(overflow: Overflow.visible, children: [
                          Positioned(
                            top: -40,
                            left: 25,
                            child: Image.asset(
                              'assets/image.jpg',
                              width: 180,
                            ),
                          ),
                          Positioned(
                            top: 170,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Apple Watch',
                                      style: GoogleFonts.raleway(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF000000),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Series 6, Red',
                                      style: GoogleFonts.raleway(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF868686),
                                      )),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Text(
                                    '*\$336',
                                    style: GoogleFonts.raleway(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF5956E9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      );
                    }),
                // child: GridView.builder(
                //     itemCount: 10,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         crossAxisSpacing: 25.0,
                //         mainAxisSpacing: 70.0),
                //     itemBuilder: (_, int index) {
                //       return Container(
                //         height: 400,
                //         width: 210,
                //         decoration: BoxDecoration(
                //             color: Colors.red,
                //             borderRadius: BorderRadius.circular(15),
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Color(0xFF393939),
                //                 blurRadius: 1,
                //                 offset: Offset(0, 3),
                //                 spreadRadius: 0,
                //               ),
                //             ]),
                //         child: Stack(
                //           overflow: Overflow.visible,
                //           children: [
                //             SizedBox(
                //               height: 50,
                //             ),
                //             Positioned(
                //               left: 15,
                //               top: -30,
                //               child: Image.asset(
                //                 'assets/image.jpg',
                //                 width: 200,
                //                 fit: BoxFit.fill,
                //               ),
                //             ),
                //             Positioned(
                //               top: 150,
                //               child: Column(
                //                 children: [
                //                   Text('Apple Watch',
                //                       style: GoogleFonts.raleway(
                //                         fontSize: 25,
                //                         fontWeight: FontWeight.w600,
                //                         color: Color(0xFF000000),
                //                       )),
                //                   SizedBox(
                //                     height: 4,
                //                   ),
                //                   Text('Series 6, Red',
                //                       style: GoogleFonts.raleway(
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.w600,
                //                         color: Color(0xFF868686),
                //                       )),
                //                   SizedBox(
                //                     height: 4,
                //                   ),
                //                   Text(
                //                     '*\$336',
                //                     style: GoogleFonts.raleway(
                //                       fontSize: 17,
                //                       fontWeight: FontWeight.w600,
                //                       color: Color(0xFF5956E9),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             )
                //           ],
                //         ),
                //       );
                //       //   return Container(
                //       //     height: 310,
                //       //     width: 210,
                //       //     decoration: BoxDecoration(
                //       //       color: Colors.white,
                //       //       borderRadius: BorderRadius.circular(15),
                //       //     ),
                //       //     child: Padding(
                //       //       padding: const EdgeInsets.only(
                //       //         left: 8.0,
                //       //         right: 8,
                //       //       ),
                //       //       child: Column(
                //       //         crossAxisAlignment: CrossAxisAlignment.start,
                //       //         children: [
                //       //           Align(
                //       //             alignment: Alignment.center,
                //       //             child: Image.asset(
                //       //               'assets/image.jpg',
                //       //               width: 150,
                //       //             ),
                //       //           ),
                //       //           Text('Apple Watch',
                //       //               style: GoogleFonts.raleway(
                //       //                 fontSize: 25,
                //       //                 fontWeight: FontWeight.w600,
                //       //                 color: Color(0xFF000000),
                //       //               )),
                //       //           SizedBox(
                //       //             height: 4,
                //       //           ),
                //       //           Text('Series 6, Red',
                //       //               style: GoogleFonts.raleway(
                //       //                 fontSize: 15,
                //       //                 fontWeight: FontWeight.w600,
                //       //                 color: Color(0xFF868686),
                //       //               )),
                //       //           SizedBox(
                //       //             height: 4,
                //       //           ),
                //       //           Text(
                //       //             '*\$336',
                //       //             style: GoogleFonts.raleway(
                //       //               fontSize: 17,
                //       //               fontWeight: FontWeight.w600,
                //       //               color: Color(0xFF5956E9),
                //       //             ),
                //       //           ),
                //       //         ],
                //       //       ),
                //       //     ),
                //       //   );
                //       // },
                //     }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
