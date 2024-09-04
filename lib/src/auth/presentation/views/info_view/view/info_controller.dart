part of '../barrels.dart';

class InfoScreen extends StatefulWidget {
  static const String path = '/info';
  static const String name = 'info';
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => InfoController();
}

class InfoController extends State<InfoScreen> {
  bool isLoading = true;
  bool isSelectedMale = false;
  bool isSelectedFemale = false;
  bool isSelectedTransgender = false;
  String selectedGender = '';

  changeColorButton(String gender) {
    setState(() {
      isSelectedMale = false;
      isSelectedFemale = false;
      isSelectedTransgender = false;

      if (gender == 'Male') {
        isSelectedMale = true;
        debugPrint(isSelectedMale.toString());
      } else if (gender == 'Female') {
        isSelectedFemale = true;
        debugPrint(isSelectedFemale.toString());
      } else if (gender == 'Transgender') {
        isSelectedTransgender = true;
        debugPrint(isSelectedTransgender.toString());
      }
    });
  }

  saveGenderInfo(String selectedGender) async {
    await LocalDataStorage.instance.setGender(selectedGender);
    Log.debug(selectedGender);
  }

  saveInfo() {
    context.pushNamed(InterestScreen.name);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InforView(this);
  }
}
