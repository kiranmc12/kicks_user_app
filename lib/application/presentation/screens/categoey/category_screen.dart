import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/home/home_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/categoey/widgets/category_list_view.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_search_field_widget.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InventoryBloc>().add(InventoryEvent.getCategoryInventories(
          idQurrey: IdQuery(id: context.read<HomeBloc>().categoryMap[title])));
    });
    return Scaffold(
      appBar: appbarWidget(title: title),
      body: const CatogoryListViews(),
    );
  }
}
