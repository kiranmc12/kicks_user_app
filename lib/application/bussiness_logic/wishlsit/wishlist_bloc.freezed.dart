// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWishListImplCopyWith<$Res> {
  factory _$$GetWishListImplCopyWith(
          _$GetWishListImpl value, $Res Function(_$GetWishListImpl) then) =
      __$$GetWishListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWishListImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$GetWishListImpl>
    implements _$$GetWishListImplCopyWith<$Res> {
  __$$GetWishListImplCopyWithImpl(
      _$GetWishListImpl _value, $Res Function(_$GetWishListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWishListImpl implements _GetWishList {
  const _$GetWishListImpl();

  @override
  String toString() {
    return 'WishlistEvent.getWishList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWishListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return getWishList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return getWishList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return getWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return getWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(this);
    }
    return orElse();
  }
}

abstract class _GetWishList implements WishlistEvent {
  const factory _GetWishList() = _$GetWishListImpl;
}

/// @nodoc
abstract class _$$AddToWishListImplCopyWith<$Res> {
  factory _$$AddToWishListImplCopyWith(
          _$AddToWishListImpl value, $Res Function(_$AddToWishListImpl) then) =
      __$$AddToWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddToWishListImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddToWishListImpl>
    implements _$$AddToWishListImplCopyWith<$Res> {
  __$$AddToWishListImplCopyWithImpl(
      _$AddToWishListImpl _value, $Res Function(_$AddToWishListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddToWishListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToWishListImpl implements _AddToWishList {
  const _$AddToWishListImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishlistEvent.addToWishList(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWishListImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToWishListImplCopyWith<_$AddToWishListImpl> get copyWith =>
      __$$AddToWishListImplCopyWithImpl<_$AddToWishListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return addToWishList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return addToWishList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return addToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return addToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddToWishList implements WishlistEvent {
  const factory _AddToWishList({required final int id}) = _$AddToWishListImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddToWishListImplCopyWith<_$AddToWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromWishListImplCopyWith<$Res> {
  factory _$$RemoveFromWishListImplCopyWith(_$RemoveFromWishListImpl value,
          $Res Function(_$RemoveFromWishListImpl) then) =
      __$$RemoveFromWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveFromWishListImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$RemoveFromWishListImpl>
    implements _$$RemoveFromWishListImplCopyWith<$Res> {
  __$$RemoveFromWishListImplCopyWithImpl(_$RemoveFromWishListImpl _value,
      $Res Function(_$RemoveFromWishListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveFromWishListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFromWishListImpl implements _RemoveFromWishList {
  const _$RemoveFromWishListImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishlistEvent.removeFromWishList(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromWishListImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromWishListImplCopyWith<_$RemoveFromWishListImpl> get copyWith =>
      __$$RemoveFromWishListImplCopyWithImpl<_$RemoveFromWishListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return removeFromWishList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return removeFromWishList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return removeFromWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return removeFromWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWishList implements WishlistEvent {
  const factory _RemoveFromWishList({required final int id}) =
      _$RemoveFromWishListImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RemoveFromWishListImplCopyWith<_$RemoveFromWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetWishListResponseModel? get getWishListResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetWishListResponseModel? getWishListResponseModel});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? getWishListResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getWishListResponseModel: freezed == getWishListResponseModel
          ? _value.getWishListResponseModel
          : getWishListResponseModel // ignore: cast_nullable_to_non_nullable
              as GetWishListResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetWishListResponseModel? getWishListResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? getWishListResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getWishListResponseModel: freezed == getWishListResponseModel
          ? _value.getWishListResponseModel
          : getWishListResponseModel // ignore: cast_nullable_to_non_nullable
              as GetWishListResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      this.message,
      this.getWishListResponseModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final GetWishListResponseModel? getWishListResponseModel;

  @override
  String toString() {
    return 'WishlistState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, getWishListResponseModel: $getWishListResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(
                    other.getWishListResponseModel, getWishListResponseModel) ||
                other.getWishListResponseModel == getWishListResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, getWishListResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WishlistState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          required final bool isDone,
          final String? message,
          final GetWishListResponseModel? getWishListResponseModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  GetWishListResponseModel? get getWishListResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
