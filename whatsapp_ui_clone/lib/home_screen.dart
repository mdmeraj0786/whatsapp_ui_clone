import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.groups),
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
            ],
            ),

            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                      value: '1',
                        child: Text('New group'),
                    ),
                    const PopupMenuItem(
                      value: '2',
                        child: Text('New Broadcast'),
                    ),
                    const PopupMenuItem(
                      value: '3',
                        child: Text('Linked devices')
                    ),
                    const PopupMenuItem(
                      value: '4',
                        child: Text('Payment')
                    ),
                    const PopupMenuItem(
                      value: '5',
                        child: Text('Settings')
                    ),
                  ],
              ),
          ],
         ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 1,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: Icon(Icons.group_add_rounded),
                      title: Text("New Community"),
                    );
                  }
              ),
              
              
              ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                      title: Text('Shahnwaj'),
                      subtitle: Text('Aaja bhai khane chalte h'),
                      trailing: Text('9:30'),
                    );
                  }
              ),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.greenAccent,
                            width: 3,
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        ),
                      ),
                      title: Text("Atique"),
                      subtitle: Text("20 minutes ago"),
                    );
                  }
              ),

              ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index) {
                    return  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                      title: const Text("Sonu Qu"),
                      subtitle: const Text("Today, 7:23"),
                      trailing: Icon(index / 2 == 0 ? Icons.videocam : Icons.phone_callback),
                    );
                  }
              ),
            ],
          ),
        ),
    );
  }
}
