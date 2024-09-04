part of '../home_barrel.dart';

class HomeScreen extends StatefulWidget {
  static const String path = '/home_view';
  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenController();
}

class HomeScreenController extends State<HomeScreen> {
  late TextEditingController searchController;
  late LocationBloc locationBloc = serviceLocator<LocationBloc>();
  final refreshController = RefreshController(initialRefresh: true);

  String firstName = '';
  String lastName = '';
  String email = '';
  String profilePic = '';
  String id = '';

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    SharedPreferences.getInstance().then((pref) {
      setState(() {
        firstName = pref.getString('firstName') ?? '';
        lastName = pref.getString('lastName') ?? '';
        email = pref.getString('email') ?? '';
        profilePic = pref.getString('ProfilePicture') ?? '';
        id = pref.getString('') ?? '';
      });
    });
    // Timer.periodic(nearbyUsers, (timer) {
    //   locationBloc.getCurrentPosition();
    //   sendLocation();
    //   debugPrint(locationBloc.state.lastKnownLocation?.latitude.toString());
    // });
  }

  @override
  void dispose() {
    searchController.dispose();
    refreshController.dispose();
    super.dispose();
  }

  sendLocation() {
    context.read<FetchUserBloc>().add(
          FetchUserEvent.sendUserLocation(
            id: id,
            location: locationBloc.state.lastKnownLocation.toString(),
          ),
        );
  }

  sendLocationError() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () => ToastMessages.showToastErrorMessage('Turn on Your Location'),
    );
  }

  onRefresh() {
    context.read<FetchUserBloc>().add(const FetchUserEvent.fetchNearbyUsers());
  }

  @override
  Widget build(BuildContext context) {
    return _HomeView(this);
  }
}
