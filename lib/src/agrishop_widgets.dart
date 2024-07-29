part of ezyagric_commons;

class AgrishopProduct extends StatelessWidget {
  AgrishopProduct(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.imageUrl,
      required this.isOutOfStock});
  final String productName;
  final String productPrice;
  final String imageUrl;
  bool isOutOfStock = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            Container(
              height: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl))),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              productName,
              style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2674b2),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            RatingBarIndicator(
              rating: 5,
              itemCount: 5,
              itemSize: 15.0,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.deepOrangeAccent,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              productPrice,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            isOutOfStock
                ? const Text(
                    "Out of Stock",
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
