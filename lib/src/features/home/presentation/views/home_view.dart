part of '../home_barrel.dart';

class _HomeView extends StatelessView<HomeScreen, HomeScreenController> {
  const _HomeView(HomeScreenController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchUserBloc, FetchUserState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: _buildHomeWidget(controller, context),
          ),
        );
      },
    );
  }
}

Widget _buildHomeWidget(HomeScreenController controller, BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableText(
          text: 'Welcome',
          // style: appMStyle(16, Color(kGrey.value), FontWeight.w500),
          style: context.textTheme.bodySmall!.copyWith(
              color: AppColors.darkGreyColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
              text: '${controller.firstName} ${controller.lastName}',
              // style: appMStyle(18, Color(kDark.value), FontWeight.bold),
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            UserDisplayPicture(
              imageUrl: controller.profilePic,
              onTap: () {},
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTxtField(
                textEditingController: controller.searchController,
                hintText: 'search user',
                hintStyle: appMStyle(16, AppColors.colorGrey, FontWeight.w400),
                filled: true,
                fillColor: AppColors.redWithLowOpacity,
                prefix: const Icon(Icons.search,
                    size: 30, color: AppColors.colorGrey),
                focusBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.darkRed),
                    borderRadius: kmediumBorderRadius),
                inputBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.whiteColor),
                    borderRadius: kmediumBorderRadius),
              ),
            ),
            SvgPicture.asset(Assets.svgHelper('Filter')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
              text: 'Near you',
              style: context.textTheme.bodySmall!.copyWith(
                  color: AppColors.darkRed, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: ReusableText(
                  text: 'See more',
                  style: context.textTheme.bodySmall!.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400)),
            )
          ],
        ),
        20.sbh,
        BlocBuilder<InternetConnectionCubit, InternetConnectionState>(
            builder: (context, state) {
          if (state is InternetConnected &&
                  state.connectionType == ConnectionType.wifi ||
              state is InternetConnected &&
                  state.connectionType == ConnectionType.mobile) {
            return _buildUsersCard(controller);
          } else if (state is InternetDisconnected) {
            return NoInternetConnectionWidget(
              onPressed: () => context.read<FetchUserBloc>()
                ..add(const FetchUserEvent.fetchNearbyUsers()),
            );
          }
          return _buildUsersCard(controller);
        })
      ],
    ).padding(const EdgeInsets.symmetric(horizontal: 12, vertical: 20)),
  );
}

Widget _buildUsersCard(HomeScreenController controller) {
  return BlocBuilder<FetchUserBloc, FetchUserState>(
    builder: (context, state) {
      // return SmartRefresher(
      //   controller: controller.refreshController,
      //   onRefresh: () => controller.onRefresh,
      //   child: state.when(
      //     fetchUsersloading: _buildProgressWidget,
      //     fetchUsers: (users) {
      //       // controller.refreshController.refreshCompleted();
      //       return _buildProgressWidget();
      //     },
      //     fetchUsersError: (error) {
      //       // controller.refreshController.refreshFailed();
      //       return _buildErrorWidget();
      //     },
      //     sendLocation: controller.sendLocation(),
      //     sendLocationError: controller.sendLocationError(),
      //   ),
      // );

      if (state is FetchAllUserLoading) {
        // return CarouselSlider.builder(
        //   itemCount: 6,
        //   options: CarouselOptions(
        //     autoPlay: false,
        //     enlargeCenterPage: true,
        //     viewportFraction: 0.9,
        //     aspectRatio: 2.0,
        //     initialPage: 0,
        //     scrollDirection: Axis.horizontal,
        //   ),
        //   itemBuilder: (context, int index, int pageViewIndex) {
        //     return const LoadingUserCard();
        //   },
        // );
        return const LoadingUserCard();
      }

      if (state is FetchAllUserSuccess) {
        CarouselSlider.builder(
          itemCount: state.users.length,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 0,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (context, int index, int pageViewIndex) {
            final users = state.users[index];
            return GestureDetector(
              onTap: () {},
              child: UsersDisplayCard(user: users),
            );
          },
        );
      }

      return const Center(child: Text('Something went wrong'));
    },
  );
}

Widget _buildProgressWidget() {
  return const LoadingUserCard();
}

Widget _buildErrorWidget() {
  return Container();
}

Widget _buildSuccessWidget(BuildContext context, List<User> users) {
  final user = users[0];
  return GestureDetector(
    onTap: () {
      // context.pushNamed('', extra: user.id);
    },
    child: UsersDisplayCard(user: user),
  );
}
