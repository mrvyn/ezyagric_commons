part of ezyagric_commons;

// class MoreBottomSheet extends StatelessWidget {
//   const MoreBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           Image.asset("../assets/ezy_agric_splash.png"),
//           ElevatedButton(
//             child: const Text('showModalBottomSheet'),
//             onPressed: () {
//               showModalBottomSheet(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return Container(
//                     padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.headphones),
//                           title: Text(
//                             'Help',
//                           ),
//                           onTap: () {
//                             Get
//                           },
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.share),
//                           title: Text(
//                             'Share',
//                           ),
//                           onTap: () {},
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.info_outline),
//                           title: Text(
//                             'About App',
//                           ),
//                           onTap: () {},
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.logout_outlined),
//                           title: Text(
//                             'Sign Out',
//                           ),
//                           onTap: () {
//                             // Navigator.push(context,
//                             //     MaterialPageRoute(builder: (_) => const SignIn()));
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

void showMoreBottomSheet() {
  Get.bottomSheet(Container(
    // color: Colors.white,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(Icons.headphones),
          title: Text(
            'Help',
          ),
          onTap: () {
            Get.back();
            // Get.to(() => HelpContent());
          },
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text(
            'Give Feedback',
          ),
          onTap: () {
            // Get.back();
            // Get.to(() => GiveFeedback());
          },
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text(
            'Share',
          ),
          onTap: () {
            Share.share('Check out the ezyagric app https://ezyagric.com',
                subject: 'Farm the Ezy way!');
          },
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(
            'About App',
          ),
          onTap: () {
            Get.back();
            // Get.bottomSheet(AboutApp());
            // Get.to(() => AboutApp());
          },
        ),
        ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text(
            'Sign Out',
          ),
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (_) => const SignIn()));
          },
        ),
      ],
    ),
  ));
}

