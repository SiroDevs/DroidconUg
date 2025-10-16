// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchOnlineData value)?  fetchonline,TResult Function( FetchLocalData value)?  fetchLocal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchOnlineData() when fetchonline != null:
return fetchonline(_that);case FetchLocalData() when fetchLocal != null:
return fetchLocal(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchOnlineData value)  fetchonline,required TResult Function( FetchLocalData value)  fetchLocal,}){
final _that = this;
switch (_that) {
case FetchOnlineData():
return fetchonline(_that);case FetchLocalData():
return fetchLocal(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchOnlineData value)?  fetchonline,TResult? Function( FetchLocalData value)?  fetchLocal,}){
final _that = this;
switch (_that) {
case FetchOnlineData() when fetchonline != null:
return fetchonline(_that);case FetchLocalData() when fetchLocal != null:
return fetchLocal(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchonline,TResult Function()?  fetchLocal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchOnlineData() when fetchonline != null:
return fetchonline();case FetchLocalData() when fetchLocal != null:
return fetchLocal();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchonline,required TResult Function()  fetchLocal,}) {final _that = this;
switch (_that) {
case FetchOnlineData():
return fetchonline();case FetchLocalData():
return fetchLocal();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchonline,TResult? Function()?  fetchLocal,}) {final _that = this;
switch (_that) {
case FetchOnlineData() when fetchonline != null:
return fetchonline();case FetchLocalData() when fetchLocal != null:
return fetchLocal();case _:
  return null;

}
}

}

/// @nodoc


class FetchOnlineData implements HomeEvent {
  const FetchOnlineData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchOnlineData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchonline()';
}


}




/// @nodoc


class FetchLocalData implements HomeEvent {
  const FetchLocalData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchLocalData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchLocal()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeState value)?  initial,TResult Function( HomeLoadedState value)?  loaded,TResult Function( HomeProgressState value)?  progress,TResult Function( HomeSuccessState value)?  success,TResult Function( HomeFetchedOnlineState value)?  fetchedOnline,TResult Function( HomeFetchedLocalState value)?  fetchedLocal,TResult Function( HomeBookmarkedState value)?  bookmarked,TResult Function( HomeFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial(_that);case HomeLoadedState() when loaded != null:
return loaded(_that);case HomeProgressState() when progress != null:
return progress(_that);case HomeSuccessState() when success != null:
return success(_that);case HomeFetchedOnlineState() when fetchedOnline != null:
return fetchedOnline(_that);case HomeFetchedLocalState() when fetchedLocal != null:
return fetchedLocal(_that);case HomeBookmarkedState() when bookmarked != null:
return bookmarked(_that);case HomeFailureState() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeState value)  initial,required TResult Function( HomeLoadedState value)  loaded,required TResult Function( HomeProgressState value)  progress,required TResult Function( HomeSuccessState value)  success,required TResult Function( HomeFetchedOnlineState value)  fetchedOnline,required TResult Function( HomeFetchedLocalState value)  fetchedLocal,required TResult Function( HomeBookmarkedState value)  bookmarked,required TResult Function( HomeFailureState value)  failure,}){
final _that = this;
switch (_that) {
case _HomeState():
return initial(_that);case HomeLoadedState():
return loaded(_that);case HomeProgressState():
return progress(_that);case HomeSuccessState():
return success(_that);case HomeFetchedOnlineState():
return fetchedOnline(_that);case HomeFetchedLocalState():
return fetchedLocal(_that);case HomeBookmarkedState():
return bookmarked(_that);case HomeFailureState():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeState value)?  initial,TResult? Function( HomeLoadedState value)?  loaded,TResult? Function( HomeProgressState value)?  progress,TResult? Function( HomeSuccessState value)?  success,TResult? Function( HomeFetchedOnlineState value)?  fetchedOnline,TResult? Function( HomeFetchedLocalState value)?  fetchedLocal,TResult? Function( HomeBookmarkedState value)?  bookmarked,TResult? Function( HomeFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial(_that);case HomeLoadedState() when loaded != null:
return loaded(_that);case HomeProgressState() when progress != null:
return progress(_that);case HomeSuccessState() when success != null:
return success(_that);case HomeFetchedOnlineState() when fetchedOnline != null:
return fetchedOnline(_that);case HomeFetchedLocalState() when fetchedLocal != null:
return fetchedLocal(_that);case HomeBookmarkedState() when bookmarked != null:
return bookmarked(_that);case HomeFailureState() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loaded,TResult Function()?  progress,TResult Function()?  success,TResult Function( bool fetched)?  fetchedOnline,TResult Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)?  fetchedLocal,TResult Function( bool bookmarked)?  bookmarked,TResult Function( String feedback)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial();case HomeLoadedState() when loaded != null:
return loaded();case HomeProgressState() when progress != null:
return progress();case HomeSuccessState() when success != null:
return success();case HomeFetchedOnlineState() when fetchedOnline != null:
return fetchedOnline(_that.fetched);case HomeFetchedLocalState() when fetchedLocal != null:
return fetchedLocal(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case HomeBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case HomeFailureState() when failure != null:
return failure(_that.feedback);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loaded,required TResult Function()  progress,required TResult Function()  success,required TResult Function( bool fetched)  fetchedOnline,required TResult Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)  fetchedLocal,required TResult Function( bool bookmarked)  bookmarked,required TResult Function( String feedback)  failure,}) {final _that = this;
switch (_that) {
case _HomeState():
return initial();case HomeLoadedState():
return loaded();case HomeProgressState():
return progress();case HomeSuccessState():
return success();case HomeFetchedOnlineState():
return fetchedOnline(_that.fetched);case HomeFetchedLocalState():
return fetchedLocal(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case HomeBookmarkedState():
return bookmarked(_that.bookmarked);case HomeFailureState():
return failure(_that.feedback);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loaded,TResult? Function()?  progress,TResult? Function()?  success,TResult? Function( bool fetched)?  fetchedOnline,TResult? Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)?  fetchedLocal,TResult? Function( bool bookmarked)?  bookmarked,TResult? Function( String feedback)?  failure,}) {final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial();case HomeLoadedState() when loaded != null:
return loaded();case HomeProgressState() when progress != null:
return progress();case HomeSuccessState() when success != null:
return success();case HomeFetchedOnlineState() when fetchedOnline != null:
return fetchedOnline(_that.fetched);case HomeFetchedLocalState() when fetchedLocal != null:
return fetchedLocal(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case HomeBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case HomeFailureState() when failure != null:
return failure(_that.feedback);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoadedState implements HomeState {
  const HomeLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loaded()';
}


}




/// @nodoc


class HomeProgressState implements HomeState {
  const HomeProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.progress()';
}


}




/// @nodoc


class HomeSuccessState implements HomeState {
  const HomeSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.success()';
}


}




/// @nodoc


class HomeFetchedOnlineState implements HomeState {
  const HomeFetchedOnlineState(this.fetched);
  

 final  bool fetched;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFetchedOnlineStateCopyWith<HomeFetchedOnlineState> get copyWith => _$HomeFetchedOnlineStateCopyWithImpl<HomeFetchedOnlineState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFetchedOnlineState&&(identical(other.fetched, fetched) || other.fetched == fetched));
}


@override
int get hashCode => Object.hash(runtimeType,fetched);

@override
String toString() {
  return 'HomeState.fetchedOnline(fetched: $fetched)';
}


}

/// @nodoc
abstract mixin class $HomeFetchedOnlineStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeFetchedOnlineStateCopyWith(HomeFetchedOnlineState value, $Res Function(HomeFetchedOnlineState) _then) = _$HomeFetchedOnlineStateCopyWithImpl;
@useResult
$Res call({
 bool fetched
});




}
/// @nodoc
class _$HomeFetchedOnlineStateCopyWithImpl<$Res>
    implements $HomeFetchedOnlineStateCopyWith<$Res> {
  _$HomeFetchedOnlineStateCopyWithImpl(this._self, this._then);

  final HomeFetchedOnlineState _self;
  final $Res Function(HomeFetchedOnlineState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fetched = null,}) {
  return _then(HomeFetchedOnlineState(
null == fetched ? _self.fetched : fetched // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeFetchedLocalState implements HomeState {
  const HomeFetchedLocalState(final  List<Bookmark> bookmarks, final  List<Room> rooms, final  List<Speaker> speakers, final  List<Session> sessions): _bookmarks = bookmarks,_rooms = rooms,_speakers = speakers,_sessions = sessions;
  

 final  List<Bookmark> _bookmarks;
 List<Bookmark> get bookmarks {
  if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarks);
}

 final  List<Room> _rooms;
 List<Room> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}

 final  List<Speaker> _speakers;
 List<Speaker> get speakers {
  if (_speakers is EqualUnmodifiableListView) return _speakers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_speakers);
}

 final  List<Session> _sessions;
 List<Session> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFetchedLocalStateCopyWith<HomeFetchedLocalState> get copyWith => _$HomeFetchedLocalStateCopyWithImpl<HomeFetchedLocalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFetchedLocalState&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks)&&const DeepCollectionEquality().equals(other._rooms, _rooms)&&const DeepCollectionEquality().equals(other._speakers, _speakers)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookmarks),const DeepCollectionEquality().hash(_rooms),const DeepCollectionEquality().hash(_speakers),const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'HomeState.fetchedLocal(bookmarks: $bookmarks, rooms: $rooms, speakers: $speakers, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $HomeFetchedLocalStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeFetchedLocalStateCopyWith(HomeFetchedLocalState value, $Res Function(HomeFetchedLocalState) _then) = _$HomeFetchedLocalStateCopyWithImpl;
@useResult
$Res call({
 List<Bookmark> bookmarks, List<Room> rooms, List<Speaker> speakers, List<Session> sessions
});




}
/// @nodoc
class _$HomeFetchedLocalStateCopyWithImpl<$Res>
    implements $HomeFetchedLocalStateCopyWith<$Res> {
  _$HomeFetchedLocalStateCopyWithImpl(this._self, this._then);

  final HomeFetchedLocalState _self;
  final $Res Function(HomeFetchedLocalState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarks = null,Object? rooms = null,Object? speakers = null,Object? sessions = null,}) {
  return _then(HomeFetchedLocalState(
null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as List<Bookmark>,null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>,null == speakers ? _self._speakers : speakers // ignore: cast_nullable_to_non_nullable
as List<Speaker>,null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<Session>,
  ));
}


}

/// @nodoc


class HomeBookmarkedState implements HomeState {
  const HomeBookmarkedState(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBookmarkedStateCopyWith<HomeBookmarkedState> get copyWith => _$HomeBookmarkedStateCopyWithImpl<HomeBookmarkedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBookmarkedState&&(identical(other.bookmarked, bookmarked) || other.bookmarked == bookmarked));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarked);

@override
String toString() {
  return 'HomeState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $HomeBookmarkedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeBookmarkedStateCopyWith(HomeBookmarkedState value, $Res Function(HomeBookmarkedState) _then) = _$HomeBookmarkedStateCopyWithImpl;
@useResult
$Res call({
 bool bookmarked
});




}
/// @nodoc
class _$HomeBookmarkedStateCopyWithImpl<$Res>
    implements $HomeBookmarkedStateCopyWith<$Res> {
  _$HomeBookmarkedStateCopyWithImpl(this._self, this._then);

  final HomeBookmarkedState _self;
  final $Res Function(HomeBookmarkedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(HomeBookmarkedState(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeFailureState implements HomeState {
  const HomeFailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFailureStateCopyWith<HomeFailureState> get copyWith => _$HomeFailureStateCopyWithImpl<HomeFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFailureState&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'HomeState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $HomeFailureStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeFailureStateCopyWith(HomeFailureState value, $Res Function(HomeFailureState) _then) = _$HomeFailureStateCopyWithImpl;
@useResult
$Res call({
 String feedback
});




}
/// @nodoc
class _$HomeFailureStateCopyWithImpl<$Res>
    implements $HomeFailureStateCopyWith<$Res> {
  _$HomeFailureStateCopyWithImpl(this._self, this._then);

  final HomeFailureState _self;
  final $Res Function(HomeFailureState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(HomeFailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
