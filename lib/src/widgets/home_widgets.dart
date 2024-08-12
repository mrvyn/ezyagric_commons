part of ezyagric_commons;

class CropsList extends StatelessWidget {
  const CropsList({super.key, required this.cropImage});
  final String cropImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(cropImage), fit: BoxFit.cover)),
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  HomeMenuItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl,
      required this.isNew,
      this.onClick});
  final String title;
  final String subTitle;
  final String imageUrl;
  final bool isNew;
  Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onClick,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(2, 4), // Shadow position
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              isNew
                  ? badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -10, end: 12),
                      badgeContent: const Text(
                        'NEW',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      badgeStyle: badges.BadgeStyle(
                        shape: badges.BadgeShape.square,
                        badgeColor: const Color.fromARGB(255, 183, 28, 28),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(imageUrl))),
                      )
                      // child: Icon(Icons.settings),
                      )
                  : Container(
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(imageUrl))),
                    ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF2674b2),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key, required this.couraselPics});
  final List couraselPics;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        //color: Colors.red,
        child: CarouselSlider.builder(
            itemCount: couraselPics.length,
            itemBuilder: (context, index, realIndex) {
              final myimage = couraselPics[index];
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(myimage), fit: BoxFit.cover)),
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
            )),
      ),
    );
  }
}

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 50,
        // margin: EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 17),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Search EzyAgric",
                style: TextStyle(
                    // fontWeight: FontWeight.w600,
                    color: Colors.black26, //AppColors.color7.withOpacity(0.48),
                    fontSize: 15)),
            Row(
              children: [
                const SizedBox(width: 10),
                const Icon(
                  Icons.search_outlined,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Get.to(const Notifications());
                  },
                  child: const Icon(
                    Icons.notifications_none,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
