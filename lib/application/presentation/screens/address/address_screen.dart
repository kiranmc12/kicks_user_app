import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/address/widgets/address_list.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/address/widgets/detail_adder_text_field.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/add_address_model/add_address_model.dart';

final GlobalKey<FormState> addressKey = GlobalKey<FormState>();

class ScreenAddress extends StatefulWidget {
  const ScreenAddress({super.key});

  @override
  State<ScreenAddress> createState() => _ScreenAddressState();
}

class _ScreenAddressState extends State<ScreenAddress> {
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appbarWidget(title: "Add Address"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: addressKey,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DetailAdderTextField(
                  text: 'Name',
                  controller: context.read<UserBloc>().nameController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'House',
                  controller: context.read<UserBloc>().houseController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'Street',
                  controller: context.read<UserBloc>().streetController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'City',
                  controller: context.read<UserBloc>().cityController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'State',
                  controller: context.read<UserBloc>().stateController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'Phone',
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: context.read<UserBloc>().phoneController,
                  visible: isAvailable,
                ),
                DetailAdderTextField(
                  text: 'Pin',
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  controller: context.read<UserBloc>().pinController,
                  visible: isAvailable,
                ),
                kHeight10,
                !isAvailable
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            isAvailable = !isAvailable;
                          });
                        },
                        child: Text(
                          "Add Address",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          if (addressKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            final model = AddAddressModel(
                              city: context
                                  .read<UserBloc>()
                                  .cityController
                                  .text
                                  .trim(),
                              houseName: context
                                  .read<UserBloc>()
                                  .houseController
                                  .text
                                  .trim(),
                              name: context
                                  .read<UserBloc>()
                                  .nameController
                                  .text
                                  .trim(),
                              pin: context
                                  .read<UserBloc>()
                                  .pinController
                                  .text
                                  .trim(),
                              state: context
                                  .read<UserBloc>()
                                  .stateController
                                  .text
                                  .trim(),
                              street: context
                                  .read<UserBloc>()
                                  .streetController
                                  .text
                                  .trim(),
                              phone: context
                                  .read<UserBloc>()
                                  .phoneController
                                  .text
                                  .trim(),
                            );
                            context.read<UserBloc>().add(
                                UserEvent.addAddress(addAddressModel: model));
                          }
                        },
                        style: elevatedButtonStyle,
                        child: const Text("Add Address"),
                      ),
                const Divider(),
                kHeight50,
                isAvailable
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isAvailable = !isAvailable;
                          });
                        },
                        child: Text(
                          "View all available addresses",
                          style: roboto(),
                        ),
                      )
                    : Text(
                        "Available addresses",
                        style: roboto(fontSize: 0.05),
                      ),
                if (!isAvailable) const AddressList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
