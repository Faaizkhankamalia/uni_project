import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class Oder_Food extends StatefulWidget {
  const Oder_Food({Key? key}) : super(key: key);

  @override
  State<Oder_Food> createState() => _Oder_FoodState();
}

class _Oder_FoodState extends State<Oder_Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oder Food"),
      ),
body: SingleChildScrollView(
  child:   Column(
    children: [
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
      Container(
        width: double.infinity,
        child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 125,
                          width: 120,
                          child: Image.asset(
                            "images/oderfood.jpg",

                          )),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Allo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, color: Colors.blue),
                            ),
                            const   SizedBox(height: 15,),

                            const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("30\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                      child: Text(
                                        "Oder Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const    SizedBox(height: 5,),
                ],
              ),
            )),
      ),
      const SizedBox(height: 5,),
    ],
  ),
),
    );
  }
}
