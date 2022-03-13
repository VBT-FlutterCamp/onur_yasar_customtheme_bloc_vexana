import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_hunter/core/network/network_service.dart';
import 'package:monster_hunter/home/service/monster_hunter_service.dart';
import 'package:monster_hunter/home/viewmodel/monster_hunter_viewmodel.dart';
import 'package:monster_hunter/product/constant/app_string.dart';
import 'package:monster_hunter/product/widget/categories_widget.dart';
import 'package:monster_hunter/product/widget/custom_card_widget.dart';
import 'package:monster_hunter/product/widget/custom_vertical_widget.dart';
import 'package:monster_hunter/product/widget/textField_widget.dart';
import 'package:kartal/kartal.dart';

class MonsterHunter extends StatelessWidget {
  const MonsterHunter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _buildAppBar(context),
        bottomNavigationBar: _buildTabbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              const TextFieldWidget(),
              BlocProvider(
                create: (context) => MonsterHunterCubit(
                  MonsterService(NetworkService.instance.networkManager),
                ),
                child: BlocConsumer<MonsterHunterCubit, MonsterHunterState>(
                    listener: (context, state) {
                  if (state is ErrorData) {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => const Text("Error Page"));
                  }
                }, builder: (context, state) {
                  return Column(
                    children: [
                      Padding(
                        padding: context.verticalPaddingNormal,
                        child: buildBody(state, context),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TabBar _buildTabbar() {
    return const TabBar(tabs: [
      Tab(
        child: Icon(Icons.home_filled),
      ),
      Tab(
        child: Icon(Icons.details_outlined),
      ),
      Tab(
        child: Icon(Icons.search_off),
      ),
      Tab(
        child: Icon(Icons.person),
      ),
    ]);
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        _buildAppBarIcon(context),
      ],
      title: _buildAppBarTitle(context),
      centerTitle: true,
    );
  }

  IconButton _buildAppBarIcon(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.card_travel),
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  Text _buildAppBarTitle(BuildContext context) {
    return Text(
      AppString().appBarTitle,
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Widget buildBody(MonsterHunterState state, BuildContext context) {
    if (state is IsLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is HomeComplited) {
      return Column(
        children: [
          _buildListview(context, state),
          const SizedBox(
            height: 6,
          ),
          const Categories(),
          _buildgGridView(context, state),
        ],
      );
    } else {
      return const Text("hata");
    }
  }

  SizedBox _buildListview(BuildContext context, HomeComplited state) {
    return SizedBox(
      height: context.height * 0.22,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.model?.length,
          itemBuilder: (context, index) {
            final item = state.model?[index];
            return ProductWidget(
              model: item,
            );
          }),
    );
  }

  SizedBox _buildgGridView(BuildContext context, HomeComplited state) {
    return SizedBox(
      height: context.height,
      child: GridView.builder(
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: state.model?.length,
        itemBuilder: (BuildContext context, int index) {
          final item = state.model?[index];
          return CustomGridCard(
            model: item,
          );
        },
      ),
    );
  }
}
