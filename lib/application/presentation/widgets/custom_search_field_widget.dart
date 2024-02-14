import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/debouncer/debouncer.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/search_model/search_model.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  const CustomSearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _debonucer = Debouncer(delay: const Duration(milliseconds: 500));
    return TextField(
      style: const TextStyle(color: kBlack),
      decoration: InputDecoration(
        hintText: "What are you looking for",
        prefixIcon: const Icon(EvaIcons.searchOutline),
        filled: true,
        fillColor: kGrey,
        contentPadding: const EdgeInsets.symmetric(vertical: 14.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value) {
        context.read<InventoryBloc>().add(InventoryEvent.searchInventories(
            searchModel: SearchModel(searchkey: value)));
      },
    );
  }
}
