part of ezyagric_commons;

void showMoreBottomSheet() {
  Get.bottomSheet(Container(
    // color: Colors.white,
    decoration: bottomSheetDecoration,
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.headphones),
          title: const Text(
            'Help',
          ),
          onTap: () {
            Get.back();
            Get.to(() => const HelpContent());
          },
        ),
        ListTile(
          leading: const Icon(Icons.message),
          title: const Text(
            'Give Feedback',
          ),
          onTap: () {
            Get.back();
            giveFeedbackBottomSheet();
          },
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text(
            'Share',
          ),
          onTap: () {
            Share.share(
                "Let's farm with EzyAgric!, it's a fast and simple app we can use for our Agricultural needs. Get it at https://play.google.com/store/apps/details?id=com.ezyagric.extension.android",
                subject: 'Farm the Ezy way!');
          },
        ),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text(
            'About App',
          ),
          onTap: () {
            Get.back();
            aboutAppBottomSheet();
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout_outlined),
          title: const Text(
            'Sign Out',
          ),
          onTap: () {
            signOutDialog();
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (_) => const SignIn()));
          },
        ),
      ],
    ),
  ));
}
