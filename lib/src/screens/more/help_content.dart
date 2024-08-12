part of ezyagric_commons;

class HelpContent extends StatelessWidget {
  HelpContent({super.key});

  var contact = "+256708383845";
  var customerEmail = "customercare@ezyagric.com";

  _launchWhatsapp() async {
    var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";

    try {
      await launchUrl(Uri.parse(androidUrl));
    } on Exception {
      Get.snackbar("WhatsApp not installed",
          "Please install whatsapp to use this feature",
          snackPosition: SnackPosition.BOTTOM);
      // print('WhatsApp is not installed.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Support",
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Colors.white,
              height: 100,
              child: InkWell(
                onTap: () async {
                  final call = Uri.parse('tel:$contact');
                  if (await canLaunchUrl(call)) {
                    launchUrl(call);
                  } else {
                    throw 'Could not launch $call';
                  }
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      decoration: const BoxDecoration(
                        //  color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/call.png"),
                          //  fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Call",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2674b2),
                                  fontSize: 18),
                            ),
                            Text(
                              contact,
                              style: const TextStyle(
                                color: Color(0xFF2674b2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Colors.white,
              height: 100,
              child: InkWell(
                onTap: () async {
                  String? encodeQueryParameters(Map<String, String> params) {
                    return params.entries
                        .map((MapEntry<String, String> e) =>
                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                        .join('&');
                  }

                  final Uri email = Uri(
                    scheme: 'mailto',
                    path: customerEmail,
                    query: encodeQueryParameters(<String, String>{
                      'subject': 'Reach Out To Us',
                      'body': '',
                    }),
                  );
                  if (await canLaunchUrl(email)) {
                    launchUrl(email);
                  } else {
                    throw 'Could not launch $email';
                  }
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      decoration: const BoxDecoration(
                        //  color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/mail.png"),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // SizedBox(
                            //   height: 20,
                            // ),
                            Text(
                              "Mail",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2674b2),
                                  fontSize: 18),
                            ),
                            Text(
                              "customercare@ezyagric.com",
                              style: TextStyle(
                                color: Color(0xFF2674b2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Colors.white,
              height: 100,
              child: InkWell(
                onTap: () {
                  _launchWhatsapp();
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      decoration: const BoxDecoration(
                          //  color: Colors.amber,
                          image: DecorationImage(
                        image: AssetImage("assets/icons/whatsapp.png"),
                        //  fit: BoxFit.cover,
                      )),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // SizedBox(
                          //   height: 20,
                          // ),
                          const Text(
                            "WhatsApp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2674b2),
                                fontSize: 18),
                          ),
                          Text(
                            contact,
                            style: const TextStyle(
                              color: Color(0xFF2674b2),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Colors.white,
              height: 100,
              child: InkWell(
                onTap: () async {
                  final sms = Uri.parse('sms:$contact');
                  if (await canLaunchUrl(sms)) {
                    launchUrl(sms);
                  } else {
                    throw 'Could not launch $sms';
                  }
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      decoration: const BoxDecoration(
                          //  color: Colors.amber,
                          image: DecorationImage(
                        image: AssetImage("assets/icons/sms.png"),
                        // fit: BoxFit.cover),
                      )),
                    ),
                    Expanded(
                      child: Container(
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "SMS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2674b2),
                                  fontSize: 18),
                            ),
                            Text(
                              "0708383845",
                              style: TextStyle(
                                color: Color(0xFF2674b2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Divider(
                color: Color(
                  0xFF2674b2,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              height: 340,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Who referred EzyAgric to you?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2674b2),
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Thank you for being part of the ezyAgric family. \nHelp us apprecate the person who referred you to us!",
                      style: TextStyle(
                        color: Color(0xFF2674b2),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Farm the EzyWay.",
                      style: TextStyle(
                        color: Color(0xFF2674b2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: const TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                            hintText: "Enter their full name",
                            hintStyle: TextStyle(fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black26, width: 1)),
                            focusedBorder: (OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black26, width: 1))),
                            labelStyle:
                                TextStyle(color: Colors.black26, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextFormField(
                        style: const TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                            hintText: "Enter their Phone Number",
                            hintStyle: TextStyle(fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black26, width: 1)),
                            focusedBorder: (OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black26, width: 1))),
                            labelStyle:
                                TextStyle(color: Colors.black26, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF27ae61),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {},
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
