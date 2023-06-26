// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:stack/core/widgets/watch.dart';
import 'package:stack/pages/main_page/ui/fragements/home_frag.dart';

import 'main_page/ui/fragements/fbproduct.dart';

class FacebookNavigationBar extends StatefulWidget {
  const FacebookNavigationBar({super.key});

  @override
  _FacebookNavigationBarState createState() => _FacebookNavigationBarState();
}

class _FacebookNavigationBarState extends State<FacebookNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  final List<Widget> _pages = [    HomeFrag(),    const Watch(),    FbProductFrag(),const VideoPage(),   const VideoPage(),const VideoPage()  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Color.fromARGB(115, 238, 235, 235),
                    child: Icon(Icons.menu, color: Colors.black),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    "facebook",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      // _tabController.animateTo(2);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // _tabController.animateTo(3);
                    },
                  ),
                  IconButton(
                    icon:  Image.asset("assests/graphics/common/m.png",width: 18.0,),

                    onPressed: () {
                      // _tabController.animateTo(4);
                    },
                  ),
                ],
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blueAccent,
              tabs: [
                const Tab(icon: Icon(Icons.home_outlined)),
                const Tab(icon: Icon(Icons.ondemand_video_outlined)),
                Tab(icon: Image.asset("assests/graphics/common/cart1.png",width: 30.0,),
),
                Tab(icon: Image.asset("assests/graphics/common/game.png",width: 30.0,color: Colors.grey,),
),
                const Tab(icon: Icon(Icons.notifications)),
                                const Tab(icon: Icon(Icons.menu)),

              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: _pages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Video Page'),
      // ),
      body: SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Row(
          children: [
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
                      Container(color: const Color.fromARGB(255, 255, 68, 227),height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 68, 255, 124),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 255, 236, 68),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 255, 152, 68),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 255, 68, 236),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 255, 68, 71),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),
           Container(color: const Color.fromARGB(255, 152, 255, 68),height: 100.0,width: 100.0,),
           Container(color: Colors.blueAccent,height: 100.0,width: 100.0,),


          ],
        ),
      ),
    );
  }
}

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Page'),
      ),
      body: const Center(
        child: Text('Group Page'),
      ),
    );
  }
}

 