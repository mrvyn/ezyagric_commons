part of ezyagric_commons;

class DashboardPage extends StatefulWidget {
  DashboardPage(
      {super.key,
      required this.homePage,
      required this.ordersPage,
      required this.profilePage});
  Widget homePage;
  Widget ordersPage;
  Widget profilePage;

  // var screens;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screens = [
      widget.homePage,
      widget.ordersPage,
      widget.profilePage,
      Container()
    ];
    return Scaffold(
      body: screens[currentIndex], //getNavigatorItems()[currentIndex].screen,
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: Offset(0, -12)),
          ],
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // Fixed
            // backgroundColor: const Color(0xFF033860),
            // <-- This works for fixed
            // selectedItemColor: Colors.grey,
            // unselectedItemColor: Colors.blueGrey,

            selectedItemColor: AppColors.primaryColor,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
            unselectedItemColor: Colors.blueGrey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'My orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              if (index == 3) {
                showMoreBottomSheet();
              } else {
                setState(() {
                  currentIndex = index;
                });
              }

              // GetX
            }),
      ),
    );
  }
}
