import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:realcafe/logic/objects/inquiry.dart';
import '/logic/objects/order.dart';
import '/logic/objects/user.dart';
part 'userprofile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  User get _user => (state as UserProfileLoaded).user;
  UserProfileCubit() : super(UserProfileLoading()) {
    //fetching form database
    emit(UserProfileLoaded(User(
        userId: 'userId',
        authId: 'authId',
        name: 'name',
        email: 'email',
        phoneNo: 9696,
        cart: [],
        wishlist: [],
        inquirys: [],
        finishOrders: [],
        pendingOrders: [],
        cancelOrders: [],
        addresses: [])));
  }

  // BASIC FUNCTIONALITY___________________________________________________________________________
  void emitName(String name) =>
      emit(UserProfileLoaded(_user.copyWith(name: name)));

  void emitEmail(String email) =>
      emit(UserProfileLoaded(_user.copyWith(email: email)));

  void emitPhoneNo(int phoneno) =>
      emit(UserProfileLoaded(_user.copyWith(phoneNo: phoneno)));

// CART FUNCTIONALITY___________________________________________________________________________
  void addCart(String productId) {
    var _temp = _user.cart;
    _temp.add(productId);
    return emit(UserProfileLoaded(_user.copyWith(cart: _temp)));
  }

  void removeCart(int index) {
    var _temp = _user.cart;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(cart: _temp)));
  }

// WISHLIST FUNCTIONALITY___________________________________________________________________________
  void addWishlist(String productId) {
    var _temp = _user.wishlist;
    _temp.add(productId);
    return emit(UserProfileLoaded(_user.copyWith(wishlist: _temp)));
  }

  void removeWishlist(int index) {
    var _temp = _user.wishlist;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(wishlist: _temp)));
  }

// FINISH_ORDERS FUNCTIONALITY___________________________________________________________________________
  void addFinishOrder(Order order) {
    var _temp = _user.finishOrders;
    _temp.add(order);
    return emit(UserProfileLoaded(_user.copyWith(finishOrders: _temp)));
  }

  void removeFinishOrder(int index) {
    var _temp = _user.finishOrders;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(finishOrders: _temp)));
  }

// PENDING_ORDERS FUNCTIONALITY___________________________________________________________________________
  void addPendingOrder(Order order) {
    var _temp = _user.pendingOrders;
    _temp.add(order);
    return emit(UserProfileLoaded(_user.copyWith(pendingOrders: _temp)));
  }

  void removePendingOrder(int index) {
    var _temp = _user.pendingOrders;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(pendingOrders: _temp)));
  }

// CANCEL_ORDERS FUNCTIONALITY___________________________________________________________________________
  void addCancelOrders(Order order) {
    var _temp = _user.cancelOrders;
    _temp.add(order);
    return emit(UserProfileLoaded(_user.copyWith(cancelOrders: _temp)));
  }

  void removeCancelOrders(int index) {
    var _temp = _user.cancelOrders;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(cancelOrders: _temp)));
  }

// ADDRESS FUNCTIONALITY___________________________________________________________________________
  void addAddressOrder(Order order) {
    var _temp = _user.pendingOrders;
    _temp.add(order);
    return emit(UserProfileLoaded(_user.copyWith(pendingOrders: _temp)));
  }

  void removeAddressOrder(int index) {
    var _temp = _user.addresses;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(addresses: _temp)));
  }

// INQUIRY FUNCTIONALITY___________________________________________________________________________
  void addInquiry(Inquiry inquiry) {
    var _temp = _user.inquirys;
    _temp.add(inquiry);
    return emit(UserProfileLoaded(_user.copyWith(inquirys: _temp)));
  }

  void removeInquiry(int index) {
    var _temp = _user.inquirys;
    _temp.removeAt(index);
    return emit(UserProfileLoaded(_user.copyWith(inquirys: _temp)));
  }
}
