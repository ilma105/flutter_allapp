// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../pages/main_page/ui/fragements/fbproduct.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  _Watch createState() => _Watch();
}

class _Watch extends State<Watch>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  final List<Widget> _pages = [    const HomePage(),    const HomePage(),    FbProductFrag(),const VideoPage(),   const VideoPage()  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
              padding:const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  
                 const SizedBox(width: 8.0),
                 const Text(
                    "Watch",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                const  Spacer(),
                  IconButton(
                    icon:const Icon(Icons.people),
                    onPressed: () {
                      // _tabController.animateTo(2);
                    },
                  ),
                  IconButton(
                    icon:const Icon(Icons.search),
                    onPressed: () {
                      // _tabController.animateTo(3);
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
                labelPadding:const EdgeInsets.symmetric(horizontal: 5.0), // Increase padding

              tabs:const [
                Tab(text: "For You",),
                Tab(text: "Live",),
                Tab(text: "Gaming",),

                Tab(text: "Reels",),

                Tab(text: "Following",),

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
        title:const Text('Watch'),
      ),
      body:const Center(
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
      appBar: AppBar(
        title: const Text('Video Page'),
      ),
      body:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Video Page'),
        ],
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

 