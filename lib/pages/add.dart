import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        title: Text(''),
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
         
            SizedBox(
              height: 70,
            ),
            Expanded(
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
                            left: 15,
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
                                    height: 9,
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
                    }),),
          ],
        ),
      ),
    );
  }
}
