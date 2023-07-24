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
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
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
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            )
          ],
          title: const Text("WhatsApp"),
        ),
        body: TabBarView(
          children: [
            const Center(child: Text('Camera')),
            ListView.separated(
              itemCount: 12,
              itemBuilder: (context, index) {
                if (index <= 10) {
                  return Container(
                    height: 40,
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/men_profile.jpg'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my dog?'),
                      trailing: Text('10:57 AM'),
                    ),
                  );
                } else if (index == 11) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          size: 12,
                          color: Colors.grey.shade800,
                        ),
                        Text(
                          'Your personal messages are ',
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 12),
                        ),
                        const Text('end-to-end encrypted',
                            style: TextStyle(color: Colors.blue, fontSize: 12)),
                      ],
                    ),
                  );
                }
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 70, right: 10),
                  child: Divider(),
                );
              },
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/men_profile.jpg'),
                      ),
                      title: Text('My Status'),
                      subtitle: Text('No updates'),
                    );
                  } else if (index == 1) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Divider(),
                    );
                  } else if (index == 2) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Recent'),
                    );
                  } else if (index == 3 || index == 4 || index == 5) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('lib/assets/men_profile.jpg'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text('35m ago'),
                    );
                  } else if (index == 6) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Divider(),
                    );
                  } else if (index == 7) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Viewed'),
                    );
                  } else if (index == 8) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('lib/assets/men_profile.jpg'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text('35m ago'),
                    );
                  } else if (index == 9) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                            size: 12,
                            color: Colors.grey.shade800,
                          ),
                          Text(
                            'Your status updates are ',
                            style: TextStyle(
                                color: Colors.grey.shade800, fontSize: 12),
                          ),
                          const Text('end-to-end encrypted',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12)),
                        ],
                      ),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('lib/assets/men_profile.jpg'),
                    ),
                    title: const Text('John Wick'),
                    subtitle: Text(index / 2 == 0
                        ? 'you missed audio call'
                        : 'call time is 12:23'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
