part of '../barrels.dart';

class _InforView extends StatelessView<InfoScreen, InfoController> {
  const _InforView(InfoController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (controller.isLoading)
              LinearProgressIndicator(
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppColors.darkRed),
                backgroundColor: Colors.grey[200],
              ),
            controller.isLoading
                ? const LoadingPage()
                : Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      30.sbh,
                      ReusableText(
                        text: 'What is your Gender',
                        style: appMStyle(
                            24, AppColors.blackColor, FontWeight.w500),
                      ),
                      50.sbh,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GenderCard(
                              icon: Icons.male_rounded,
                              gender: 'Male',
                              initialColor: controller.isSelectedMale
                                  ? AppColors.darkRed
                                  : AppColors.blackColor,
                              onTap: () {
                                controller.changeColorButton('Male');
                                controller.saveGenderInfo('Male');
                              }),
                          GenderCard(
                            icon: Icons.female_rounded,
                            gender: 'Female',
                            initialColor: controller.isSelectedFemale
                                ? AppColors.darkRed
                                : AppColors.blackColor,
                            onTap: () {
                              controller.changeColorButton('Female');
                              controller.saveGenderInfo('Female');
                            },
                          ),
                        ],
                      ),
                      50.sbh,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GenderCard(
                          icon: Icons.transgender_sharp,
                          gender: 'Transgender',
                          initialColor: controller.isSelectedTransgender
                              ? AppColors.darkRed
                              : AppColors.blackColor,
                          onTap: () {
                            controller.changeColorButton('Transgender');
                            controller.saveGenderInfo('Transgender');
                          },
                        ),
                      ),
                      70.sbh,
                      CustomButton(
                        width: width,
                        height: height / 15,
                        color: AppColors.darkRed,
                        textColor: AppColors.whiteColor,
                        text: 'Continue',
                        onTap: () => controller.saveInfo(),
                      )
                    ],
                  ).padding(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  ),
          ],
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String gender;
  final Color initialColor;
  final VoidCallback? onTap;

  const GenderCard({
    super.key,
    required this.initialColor,
    required this.gender,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: initialColor, size: 100),
          10.sbh,
          ReusableText(
              text: gender, style: appMStyle(20, initialColor, FontWeight.w700))
        ],
      ),
    );
  }
}
