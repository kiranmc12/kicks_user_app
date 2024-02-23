// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrderImplCopyWith<$Res> {
  factory _$$GetOrderImplCopyWith(
          _$GetOrderImpl value, $Res Function(_$GetOrderImpl) then) =
      __$$GetOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderImpl>
    implements _$$GetOrderImplCopyWith<$Res> {
  __$$GetOrderImplCopyWithImpl(
      _$GetOrderImpl _value, $Res Function(_$GetOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrderImpl implements _GetOrder {
  const _$GetOrderImpl();

  @override
  String toString() {
    return 'OrdersEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrder implements OrdersEvent {
  const factory _GetOrder() = _$GetOrderImpl;
}

/// @nodoc
abstract class _$$GetOrderDetailsImplCopyWith<$Res> {
  factory _$$GetOrderDetailsImplCopyWith(_$GetOrderDetailsImpl value,
          $Res Function(_$GetOrderDetailsImpl) then) =
      __$$GetOrderDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$GetOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderDetailsImpl>
    implements _$$GetOrderDetailsImplCopyWith<$Res> {
  __$$GetOrderDetailsImplCopyWithImpl(
      _$GetOrderDetailsImpl _value, $Res Function(_$GetOrderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderDetailsImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOrderDetailsImpl implements _GetOrderDetails {
  const _$GetOrderDetailsImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.getOrderDetails(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDetailsImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDetailsImplCopyWith<_$GetOrderDetailsImpl> get copyWith =>
      __$$GetOrderDetailsImplCopyWithImpl<_$GetOrderDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return getOrderDetails(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return getOrderDetails?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return getOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return getOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetails implements OrdersEvent {
  const factory _GetOrderDetails({required final int orderId}) =
      _$GetOrderDetailsImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderDetailsImplCopyWith<_$GetOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements _CancelOrder {
  const _$CancelOrderImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.cancelOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return cancelOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return cancelOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrdersEvent {
  const factory _CancelOrder({required final int orderId}) = _$CancelOrderImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnOrderImplCopyWith<$Res> {
  factory _$$ReturnOrderImplCopyWith(
          _$ReturnOrderImpl value, $Res Function(_$ReturnOrderImpl) then) =
      __$$ReturnOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$ReturnOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ReturnOrderImpl>
    implements _$$ReturnOrderImplCopyWith<$Res> {
  __$$ReturnOrderImplCopyWithImpl(
      _$ReturnOrderImpl _value, $Res Function(_$ReturnOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$ReturnOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReturnOrderImpl implements _ReturnOrder {
  const _$ReturnOrderImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.returnOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnOrderImplCopyWith<_$ReturnOrderImpl> get copyWith =>
      __$$ReturnOrderImplCopyWithImpl<_$ReturnOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return returnOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return returnOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (returnOrder != null) {
      return returnOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return returnOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return returnOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (returnOrder != null) {
      return returnOrder(this);
    }
    return orElse();
  }
}

abstract class _ReturnOrder implements OrdersEvent {
  const factory _ReturnOrder({required final int orderId}) = _$ReturnOrderImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$ReturnOrderImplCopyWith<_$ReturnOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCheckOutImplCopyWith<$Res> {
  factory _$$GetCheckOutImplCopyWith(
          _$GetCheckOutImpl value, $Res Function(_$GetCheckOutImpl) then) =
      __$$GetCheckOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCheckOutImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetCheckOutImpl>
    implements _$$GetCheckOutImplCopyWith<$Res> {
  __$$GetCheckOutImplCopyWithImpl(
      _$GetCheckOutImpl _value, $Res Function(_$GetCheckOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCheckOutImpl implements _GetCheckOut {
  const _$GetCheckOutImpl();

  @override
  String toString() {
    return 'OrdersEvent.getCheckout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCheckOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return getCheckout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return getCheckout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (getCheckout != null) {
      return getCheckout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return getCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return getCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (getCheckout != null) {
      return getCheckout(this);
    }
    return orElse();
  }
}

abstract class _GetCheckOut implements OrdersEvent {
  const factory _GetCheckOut() = _$GetCheckOutImpl;
}

/// @nodoc
abstract class _$$CallRazorpayImplCopyWith<$Res> {
  factory _$$CallRazorpayImplCopyWith(
          _$CallRazorpayImpl value, $Res Function(_$CallRazorpayImpl) then) =
      __$$CallRazorpayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderModel placeOrderModel, int amount});
}

/// @nodoc
class __$$CallRazorpayImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CallRazorpayImpl>
    implements _$$CallRazorpayImplCopyWith<$Res> {
  __$$CallRazorpayImplCopyWithImpl(
      _$CallRazorpayImpl _value, $Res Function(_$CallRazorpayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeOrderModel = null,
    Object? amount = null,
  }) {
    return _then(_$CallRazorpayImpl(
      placeOrderModel: null == placeOrderModel
          ? _value.placeOrderModel
          : placeOrderModel // ignore: cast_nullable_to_non_nullable
              as PlaceOrderModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CallRazorpayImpl implements _CallRazorpay {
  const _$CallRazorpayImpl(
      {required this.placeOrderModel, required this.amount});

  @override
  final PlaceOrderModel placeOrderModel;
  @override
  final int amount;

  @override
  String toString() {
    return 'OrdersEvent.callRazorpay(placeOrderModel: $placeOrderModel, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallRazorpayImpl &&
            (identical(other.placeOrderModel, placeOrderModel) ||
                other.placeOrderModel == placeOrderModel) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeOrderModel, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallRazorpayImplCopyWith<_$CallRazorpayImpl> get copyWith =>
      __$$CallRazorpayImplCopyWithImpl<_$CallRazorpayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return callRazorpay(placeOrderModel, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return callRazorpay?.call(placeOrderModel, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (callRazorpay != null) {
      return callRazorpay(placeOrderModel, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return callRazorpay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return callRazorpay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (callRazorpay != null) {
      return callRazorpay(this);
    }
    return orElse();
  }
}

abstract class _CallRazorpay implements OrdersEvent {
  const factory _CallRazorpay(
      {required final PlaceOrderModel placeOrderModel,
      required final int amount}) = _$CallRazorpayImpl;

  PlaceOrderModel get placeOrderModel;
  int get amount;
  @JsonKey(ignore: true)
  _$$CallRazorpayImplCopyWith<_$CallRazorpayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderImplCopyWith<$Res> {
  factory _$$PlaceOrderImplCopyWith(
          _$PlaceOrderImpl value, $Res Function(_$PlaceOrderImpl) then) =
      __$$PlaceOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderModel placeOrderModel});
}

/// @nodoc
class __$$PlaceOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$PlaceOrderImpl>
    implements _$$PlaceOrderImplCopyWith<$Res> {
  __$$PlaceOrderImplCopyWithImpl(
      _$PlaceOrderImpl _value, $Res Function(_$PlaceOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeOrderModel = null,
  }) {
    return _then(_$PlaceOrderImpl(
      placeOrderModel: null == placeOrderModel
          ? _value.placeOrderModel
          : placeOrderModel // ignore: cast_nullable_to_non_nullable
              as PlaceOrderModel,
    ));
  }
}

/// @nodoc

class _$PlaceOrderImpl implements _PlaceOrder {
  const _$PlaceOrderImpl({required this.placeOrderModel});

  @override
  final PlaceOrderModel placeOrderModel;

  @override
  String toString() {
    return 'OrdersEvent.placeOrder(placeOrderModel: $placeOrderModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderImpl &&
            (identical(other.placeOrderModel, placeOrderModel) ||
                other.placeOrderModel == placeOrderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeOrderModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      __$$PlaceOrderImplCopyWithImpl<_$PlaceOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return placeOrder(placeOrderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return placeOrder?.call(placeOrderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(placeOrderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements OrdersEvent {
  const factory _PlaceOrder({required final PlaceOrderModel placeOrderModel}) =
      _$PlaceOrderImpl;

  PlaceOrderModel get placeOrderModel;
  @JsonKey(ignore: true)
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPaymnetMethodImplCopyWith<$Res> {
  factory _$$SetPaymnetMethodImplCopyWith(_$SetPaymnetMethodImpl value,
          $Res Function(_$SetPaymnetMethodImpl) then) =
      __$$SetPaymnetMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod paymentMethod});
}

/// @nodoc
class __$$SetPaymnetMethodImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SetPaymnetMethodImpl>
    implements _$$SetPaymnetMethodImplCopyWith<$Res> {
  __$$SetPaymnetMethodImplCopyWithImpl(_$SetPaymnetMethodImpl _value,
      $Res Function(_$SetPaymnetMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$SetPaymnetMethodImpl(
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

/// @nodoc

class _$SetPaymnetMethodImpl implements _SetPaymnetMethod {
  const _$SetPaymnetMethodImpl({required this.paymentMethod});

  @override
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'OrdersEvent.setPaymnetMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPaymnetMethodImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPaymnetMethodImplCopyWith<_$SetPaymnetMethodImpl> get copyWith =>
      __$$SetPaymnetMethodImplCopyWithImpl<_$SetPaymnetMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return setPaymnetMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return setPaymnetMethod?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (setPaymnetMethod != null) {
      return setPaymnetMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return setPaymnetMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return setPaymnetMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (setPaymnetMethod != null) {
      return setPaymnetMethod(this);
    }
    return orElse();
  }
}

abstract class _SetPaymnetMethod implements OrdersEvent {
  const factory _SetPaymnetMethod(
      {required final PaymentMethod paymentMethod}) = _$SetPaymnetMethodImpl;

  PaymentMethod get paymentMethod;
  @JsonKey(ignore: true)
  _$$SetPaymnetMethodImplCopyWith<_$SetPaymnetMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAddressImplCopyWith<$Res> {
  factory _$$SetAddressImplCopyWith(
          _$SetAddressImpl value, $Res Function(_$SetAddressImpl) then) =
      __$$SetAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});
}

/// @nodoc
class __$$SetAddressImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SetAddressImpl>
    implements _$$SetAddressImplCopyWith<$Res> {
  __$$SetAddressImplCopyWithImpl(
      _$SetAddressImpl _value, $Res Function(_$SetAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SetAddressImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$SetAddressImpl implements _SetAddress {
  const _$SetAddressImpl({required this.address});

  @override
  final Address address;

  @override
  String toString() {
    return 'OrdersEvent.setAddress(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAddressImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAddressImplCopyWith<_$SetAddressImpl> get copyWith =>
      __$$SetAddressImplCopyWithImpl<_$SetAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) getOrderDetails,
    required TResult Function(int orderId) cancelOrder,
    required TResult Function(int orderId) returnOrder,
    required TResult Function() getCheckout,
    required TResult Function(PlaceOrderModel placeOrderModel, int amount)
        callRazorpay,
    required TResult Function(PlaceOrderModel placeOrderModel) placeOrder,
    required TResult Function(PaymentMethod paymentMethod) setPaymnetMethod,
    required TResult Function(Address address) setAddress,
  }) {
    return setAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
    TResult? Function(int orderId)? cancelOrder,
    TResult? Function(int orderId)? returnOrder,
    TResult? Function()? getCheckout,
    TResult? Function(PlaceOrderModel placeOrderModel, int amount)?
        callRazorpay,
    TResult? Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult? Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult? Function(Address address)? setAddress,
  }) {
    return setAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    TResult Function(int orderId)? cancelOrder,
    TResult Function(int orderId)? returnOrder,
    TResult Function()? getCheckout,
    TResult Function(PlaceOrderModel placeOrderModel, int amount)? callRazorpay,
    TResult Function(PlaceOrderModel placeOrderModel)? placeOrder,
    TResult Function(PaymentMethod paymentMethod)? setPaymnetMethod,
    TResult Function(Address address)? setAddress,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
    required TResult Function(_GetCheckOut value) getCheckout,
    required TResult Function(_CallRazorpay value) callRazorpay,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SetPaymnetMethod value) setPaymnetMethod,
    required TResult Function(_SetAddress value) setAddress,
  }) {
    return setAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
    TResult? Function(_GetCheckOut value)? getCheckout,
    TResult? Function(_CallRazorpay value)? callRazorpay,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult? Function(_SetAddress value)? setAddress,
  }) {
    return setAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    TResult Function(_GetCheckOut value)? getCheckout,
    TResult Function(_CallRazorpay value)? callRazorpay,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SetPaymnetMethod value)? setPaymnetMethod,
    TResult Function(_SetAddress value)? setAddress,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(this);
    }
    return orElse();
  }
}

abstract class _SetAddress implements OrdersEvent {
  const factory _SetAddress({required final Address address}) =
      _$SetAddressImpl;

  Address get address;
  @JsonKey(ignore: true)
  _$$SetAddressImplCopyWith<_$SetAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Address? get selecteAddress => throw _privateConstructorUsedError;
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  GetCheckoutResponseModel? get getCheckoutResponseModel =>
      throw _privateConstructorUsedError;
  List<Orders>? get orders => throw _privateConstructorUsedError;
  GetAllOrdersResposneModel? get getAllOrdersResposneModel =>
      throw _privateConstructorUsedError;
  GetOrderDetailsResponseModel? get getOrderDetailsResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      Address? selecteAddress,
      PaymentMethod? selectedPaymentMethod,
      GetCheckoutResponseModel? getCheckoutResponseModel,
      List<Orders>? orders,
      GetAllOrdersResposneModel? getAllOrdersResposneModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

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
    Object? selecteAddress = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? getCheckoutResponseModel = freezed,
    Object? orders = freezed,
    Object? getAllOrdersResposneModel = freezed,
    Object? getOrderDetailsResponseModel = freezed,
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
      selecteAddress: freezed == selecteAddress
          ? _value.selecteAddress
          : selecteAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      getCheckoutResponseModel: freezed == getCheckoutResponseModel
          ? _value.getCheckoutResponseModel
          : getCheckoutResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCheckoutResponseModel?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      getAllOrdersResposneModel: freezed == getAllOrdersResposneModel
          ? _value.getAllOrdersResposneModel
          : getAllOrdersResposneModel // ignore: cast_nullable_to_non_nullable
              as GetAllOrdersResposneModel?,
      getOrderDetailsResponseModel: freezed == getOrderDetailsResponseModel
          ? _value.getOrderDetailsResponseModel
          : getOrderDetailsResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderDetailsResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
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
      Address? selecteAddress,
      PaymentMethod? selectedPaymentMethod,
      GetCheckoutResponseModel? getCheckoutResponseModel,
      List<Orders>? orders,
      GetAllOrdersResposneModel? getAllOrdersResposneModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? selecteAddress = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? getCheckoutResponseModel = freezed,
    Object? orders = freezed,
    Object? getAllOrdersResposneModel = freezed,
    Object? getOrderDetailsResponseModel = freezed,
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
      selecteAddress: freezed == selecteAddress
          ? _value.selecteAddress
          : selecteAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      getCheckoutResponseModel: freezed == getCheckoutResponseModel
          ? _value.getCheckoutResponseModel
          : getCheckoutResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCheckoutResponseModel?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      getAllOrdersResposneModel: freezed == getAllOrdersResposneModel
          ? _value.getAllOrdersResposneModel
          : getAllOrdersResposneModel // ignore: cast_nullable_to_non_nullable
              as GetAllOrdersResposneModel?,
      getOrderDetailsResponseModel: freezed == getOrderDetailsResponseModel
          ? _value.getOrderDetailsResponseModel
          : getOrderDetailsResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderDetailsResponseModel?,
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
      this.selecteAddress,
      this.selectedPaymentMethod,
      this.getCheckoutResponseModel,
      final List<Orders>? orders,
      this.getAllOrdersResposneModel,
      this.getOrderDetailsResponseModel})
      : _orders = orders;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final Address? selecteAddress;
  @override
  final PaymentMethod? selectedPaymentMethod;
  @override
  final GetCheckoutResponseModel? getCheckoutResponseModel;
  final List<Orders>? _orders;
  @override
  List<Orders>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GetAllOrdersResposneModel? getAllOrdersResposneModel;
  @override
  final GetOrderDetailsResponseModel? getOrderDetailsResponseModel;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, selecteAddress: $selecteAddress, selectedPaymentMethod: $selectedPaymentMethod, getCheckoutResponseModel: $getCheckoutResponseModel, orders: $orders, getAllOrdersResposneModel: $getAllOrdersResposneModel, getOrderDetailsResponseModel: $getOrderDetailsResponseModel)';
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
            (identical(other.selecteAddress, selecteAddress) ||
                other.selecteAddress == selecteAddress) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(
                    other.getCheckoutResponseModel, getCheckoutResponseModel) ||
                other.getCheckoutResponseModel == getCheckoutResponseModel) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.getAllOrdersResposneModel,
                    getAllOrdersResposneModel) ||
                other.getAllOrdersResposneModel == getAllOrdersResposneModel) &&
            (identical(other.getOrderDetailsResponseModel,
                    getOrderDetailsResponseModel) ||
                other.getOrderDetailsResponseModel ==
                    getOrderDetailsResponseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      isDone,
      message,
      selecteAddress,
      selectedPaymentMethod,
      getCheckoutResponseModel,
      const DeepCollectionEquality().hash(_orders),
      getAllOrdersResposneModel,
      getOrderDetailsResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OrdersState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          required final bool isDone,
          final String? message,
          final Address? selecteAddress,
          final PaymentMethod? selectedPaymentMethod,
          final GetCheckoutResponseModel? getCheckoutResponseModel,
          final List<Orders>? orders,
          final GetAllOrdersResposneModel? getAllOrdersResposneModel,
          final GetOrderDetailsResponseModel? getOrderDetailsResponseModel}) =
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
  Address? get selecteAddress;
  @override
  PaymentMethod? get selectedPaymentMethod;
  @override
  GetCheckoutResponseModel? get getCheckoutResponseModel;
  @override
  List<Orders>? get orders;
  @override
  GetAllOrdersResposneModel? get getAllOrdersResposneModel;
  @override
  GetOrderDetailsResponseModel? get getOrderDetailsResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
