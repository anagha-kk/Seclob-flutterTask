import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../api/apis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> post = [];
  fetposts() async {
    var data = await fetchData();
    setState(() {
      post = data[0]['media'];
      print(post);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    fetposts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                // color: Colors.cyan,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Icon(Icons.arrow_back_ios_new),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 299),
                            child: Icon(Icons.menu_outlined),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8
                      ),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        height: 200,
                        child: Stack(
                          children: [
                            if (post.isNotEmpty)
                            Positioned(
                              left:10,
                              top: 5,
                              child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: ClipRRect(
                                    child:  Image.network(post[0]['profilePic']),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  )),
                            ),
                            Positioned(
                                left: 125,
                                top: 20,
                                child: Text("50",
                                style: TextStyle(
                                  fontSize: 20
                                ),
                                )),
                            Positioned(
                                left: 120,
                                top: 43,
                                child: Text("Post",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "cera_pro",
                                  color: Colors.black38
                                ),
                                )),
                            Positioned(
                                left: 205,
                                top: 20,
                                child: Text("564",
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                )),
                            Positioned(
                                left: 188,
                                top: 43,
                                child: Text("Followers",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "cera_pro",
                                      color: Colors.black38
                                  ),
                                )),
                            Positioned(
                                left: 295,
                                top: 20,
                                child: Text("564",
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                )),
                            Positioned(
                                left: 278,
                                top: 43,
                                child: Text("Following",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "cera_pro",
                                      color: Colors.black38
                                  ),
                                )),
                            if (post.isNotEmpty)
                            Positioned(
                              top: 81,
                              left: 5,
                              child: Text(post[0]['firstName'] + ' ' + post[0]['lastName']),
                            ),
                            Positioned(
                              top: 101,
                              left: 5,
                              child: Text(
                                  "Photographer"),
                            ),
                            Positioned(
                              top: 121,
                              left: 5,
                              child: Text(
                                  "You are Beautiful🥰"),
                            ),
                            Positioned(
                              top: 150,
                              left: 10,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      foregroundColor:
                                      MaterialStateProperty.all(
                                          Colors.white),
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                          Colors.blue),
                                      minimumSize:
                                      MaterialStateProperty.all(
                                          Size(90, 30))),
                                onPressed: (){},
                                child: Text("Edit Profile"),
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 140,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all(
                                        Colors.white),
                                    backgroundColor:
                                    MaterialStateProperty.all(
                                        Color(0xff14162e)),
                                    minimumSize:
                                    MaterialStateProperty.all(
                                        Size(120, 30))),
                                onPressed: (){},
                                child: Text("Wallet"),
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 290,
                              child: Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff313978),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Icon(Icons.call,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Center(child: Text("Photos",
                              style: TextStyle(
                                  fontFamily: "cera_pro",
                                  color: Colors.black54
                              )
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.blue
                            )
                          ),
                          height: 30,
                          width: 150,
                        ),
                        Container(
                          child: Center(child: Text("Videos",
                          style: TextStyle(
                            fontFamily: "cera_pro",
                            color: Colors.black54
                          ),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.blue
                              )
                          ),
                          height: 30,
                          width: 150,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 25
                ),
                height: 500,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: post.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 2 / 2.2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 90,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 90,
                                child: Image.network(post[index]['filePath'],
                                fit: BoxFit.cover,
                                ),
                                color: Colors.blue,
                                // child: ,
                              ),
                              Positioned(
                                bottom: 10,
                                right: 3,
                                child: Icon(Icons.comment_outlined,
                                color: Colors.white,
                                ),
                              ),
                              Positioned(
                                bottom: 1,
                                right: 8,
                                child: Text(post[index]['commentCount'].toString(),style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: "cera_pro"
                                ),),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 3,
                                child: Icon(Icons.heart_broken_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                bottom: 1,
                                left: 10,
                                child: Text(post[index]['likeCount'].toString(),style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: "cera_pro"
                                ),),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ],
                    );
                  },
                ),
                color: Colors.white,
              ),
              ElevatedButton(
                  onPressed: () {
                    fetchData();
                  },
                  child: Text("data"))
            ],
          ),
        ),
      ),
    );
  }
}
