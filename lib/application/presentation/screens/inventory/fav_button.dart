import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/wishlsit/wishlist_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class FavButton extends StatefulWidget {
  bool isFav;
  final int id;
  FavButton({
    super.key,
    required this.isFav,
    required this.id,
  });

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: kWhite,
      splashColor: kWhite,
      highlightColor: kWhite,
      
      focusColor: kWhite,
      onTap: () {
        widget.isFav
            ? context
                .read<WishlistBloc>()
                .add(WishlistEvent.removeFromWishList(id: widget.id))
            : context
                .read<WishlistBloc>()
                .add(WishlistEvent.addToWishList(id: widget.id));
        widget.isFav = !widget.isFav;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: kWhite,
        child: widget.isFav
            ? Icon(Icons.favorite, color: kRed.withOpacity(0.9))
            : const Icon(Icons.favorite_border_outlined),
      ),
    );
  }
}
