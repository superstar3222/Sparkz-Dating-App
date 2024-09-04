part of '../barrels.dart';

class InterestScreen extends StatefulWidget {
  static const String path = '/interest';
  static const String name = 'interest';
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => InterestController();
}

class InterestController extends State<InterestScreen> {
  String gender = '';
  String about = '';
  String email = '';

  bool clickedMulti = false;
  List<String> selectTedList = [];

  selectedItems(String selecteditem) {
    if (selectTedList.contains(selecteditem)) {
      selectTedList.remove(selecteditem);
    } else {
      selectTedList.add(selecteditem);
    }
    if (selectTedList.isEmpty) {
      clickedMulti = false;
    }
    setState(() {});
  }

  selectedInterest() async {
    await LocalDataStorage.instance.setListInterest(selectTedList);
    Log.debug(selectTedList);
  }

  saveInfo() {
    if (selectTedList != []) {
      context.read<InterestBloc>().add(CreateUserProfile(
            email: email,
            gender: gender,
            about: about,
            interests: selectTedList,
          ));
    }
  }

  saveInfoSuccess() async {
    context.goNamed(HomeScreen.name);
  }

  saveInfoError(NetworkExceptions error) {
    ToastMessages.showToastServerError(error);
  }

  backPage() {
    context.pop();
  }

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((pref) {
      setState(() {
        gender = pref.getString('gender') ?? '';
        about = pref.getString('about') ?? '';
        email = pref.getString('email') ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InterestView(this);
  }
}
