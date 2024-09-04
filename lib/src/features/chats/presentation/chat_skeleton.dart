part of 'chats_barrel.dart';

class ChatTabBarSkeleton extends StatefulWidget {
  static const String path = '/chat-tabbar-skeleton';
  static const String name = '/chat_tabbar';
  const ChatTabBarSkeleton({super.key});

  @override
  State<ChatTabBarSkeleton> createState() => _ChatTabBarSkeletonState();
}

class _ChatTabBarSkeletonState extends State<ChatTabBarSkeleton> {
  String message = "";

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((pref) {
      setState(() {
        message = pref.getString("FCM") ?? "";
      });
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   final arguments = ModalRoute.of(context)!.settings.arguments;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: height * 0.25,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          color: AppColors.darkRed,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.noAccountImage),
                Icon(
                  Icons.more_vert,
                  color: AppColors.whiteColor,
                  size: 30.w,
                )
              ],
            ).padding(EdgeInsets.only(top: 70.h)),
            20.sbh,
            ReusableText(
                text: message,
                style: appMStyle(18, Colors.white, FontWeight.bold)),
            // Row(
            //   children: [
            //     AnimatedContainer(
            //       duration: const Duration(),
            //       child: chatSkeletonScreens(),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

Widget chatSkeletonScreens() {
  return const TabBar(tabs: []);
}
