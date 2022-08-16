import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/artists_data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.email,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueGrey[900],
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_sharp,
              size: 40.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1659504959196-04f5d408fd3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: artistsData.length,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 80.h,
                      margin: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DottedBorder(
                            color: Colors.purple,
                            strokeWidth: 2,
                            dashPattern: [8, 4],
                            radius: Radius.circular(40.0.r),
                            borderType: BorderType.Circle,
                            padding: const EdgeInsets.all(
                              5.0,
                            ),
                            child: CircleAvatar(
                              radius: 40.0.r,
                              backgroundImage: NetworkImage(
                                artistsData[index].imageUrl,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            artistsData[index].name,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                FeedCard(
                  username: 'Ava Sadie',
                  postUrl:
                      'https://images.unsplash.com/photo-1659425757127-ccbf96c59163?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                  location: 'New York, United States',
                  profileUrl:
                      'https://images.unsplash.com/photo-1659504959196-04f5d408fd3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                ),
                FeedCard(
                  username: 'Alice Johnson',
                  profileUrl:
                      'https://images.unsplash.com/photo-1657299141942-3dab1b224686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                  location: 'New York, United States',
                  postUrl:
                      'https://images.unsplash.com/photo-1657299143333-4a56a5519651?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                ),
                FeedCard(
                  username: 'Nate James',
                  profileUrl:
                      'https://images.unsplash.com/photo-1659391912796-f2c1e342b46b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                  location: 'New York, United States',
                  postUrl:
                      'https://images.unsplash.com/photo-1659480150417-25f9f0d5ca2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                ),
                FeedCard(
                  username: 'John X',
                  profileUrl:
                      'https://images.unsplash.com/photo-1659470411769-f254f94d5e44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                  location: 'New York, United States',
                  postUrl:
                      'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({
    Key? key,
    required this.username,
    required this.location,
    required this.profileUrl,
    required this.postUrl,
  }) : super(key: key);

  final String username;
  final String location;
  final String profileUrl;
  final String postUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: DottedBorder(
                  color: Colors.purple,
                  strokeWidth: 2,
                  dashPattern: [8, 4],
                  radius: Radius.circular(40.0.r),
                  borderType: BorderType.Circle,
                  padding: const EdgeInsets.all(
                    4.0,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profileUrl),
                  ),
                ),
                title: Text(username),
                subtitle: Text(
                  location,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz_outlined,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Image.network(
                    postUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Color.fromARGB(255, 14, 60, 97),
                    size: 30.0.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '6.2k',
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      color: Color.fromARGB(255, 14, 60, 97),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Icon(
                    FontAwesomeIcons.comment,
                    size: 27.0.w,
                    color: Color.fromARGB(255, 14, 60, 97),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '2.1k',
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      color: Color.fromARGB(255, 14, 60, 97),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Color.fromARGB(255, 14, 60, 97),
                    size: 30.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '3.5k',
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      color: Color.fromARGB(255, 14, 60, 97),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
