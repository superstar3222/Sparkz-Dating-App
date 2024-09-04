import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/src/auth/data/models/user.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../app/common/common.dart';

class UsersDisplayCard extends StatelessWidget {
  final User user;
  const UsersDisplayCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeOf.carouselHeight,
          width: SizeOf.carouselWidth,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                fit: BoxFit.contain,
                image: CachedNetworkImageProvider(user.profilePicture)),
          ),
        ),
        0.5.sbh,
        SizedBox(
          height: SizeOf.carouselBodyHeight,
          width: SizeOf.carouselBodyWidth,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ReusableText(
                      text: "${user.firstName} ${user.lastName},",
                      style: context.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    10.sbh,
                    ReusableText(
                      text: ' 23',
                      style: context.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    ReusableText(
                      text: user.location,
                      style:
                          context.textTheme.bodyMedium!.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ).padding(
              const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}

class LoadingUserCard extends StatelessWidget {
  const LoadingUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.red,
      highlightColor: Colors.yellow,
      child: Column(
        children: [
          Container(
            height: SizeOf.carouselHeight,
            width: SizeOf.carouselWidth,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          2.sbh,
          SizedBox(
            height: SizeOf.carouselBodyHeight,
            width: SizeOf.carouselBodyWidth,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(color: Colors.black),
                    ],
                  ),
                  Row(
                    children: [
                      Container(color: Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
