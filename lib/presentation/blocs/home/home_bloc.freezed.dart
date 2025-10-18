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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchData value)?  fetchData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchData() when fetchData != null:
return fetchData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchData value)  fetchData,}){
final _that = this;
switch (_that) {
case FetchData():
return fetchData(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchData value)?  fetchData,}){
final _that = this;
switch (_that) {
case FetchData() when fetchData != null:
return fetchData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchData() when fetchData != null:
return fetchData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchData,}) {final _that = this;
switch (_that) {
case FetchData():
return fetchData();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchData,}) {final _that = this;
switch (_that) {
case FetchData() when fetchData != null:
return fetchData();case _:
  return null;

}
}

}

/// @nodoc


class FetchData implements HomeEvent {
  const FetchData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchData()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeState value)?  initial,TResult Function( LoadedState value)?  loaded,TResult Function( ProgressState value)?  progress,TResult Function( HomeSuccess value)?  success,TResult Function( DataFetched value)?  fetched,TResult Function( SessionBookmarked value)?  bookmarked,TResult Function( NoInternetState value)?  noInternet,TResult Function( FailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case HomeSuccess() when success != null:
return success(_that);case DataFetched() when fetched != null:
return fetched(_that);case SessionBookmarked() when bookmarked != null:
return bookmarked(_that);case NoInternetState() when noInternet != null:
return noInternet(_that);case FailureState() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeState value)  initial,required TResult Function( LoadedState value)  loaded,required TResult Function( ProgressState value)  progress,required TResult Function( HomeSuccess value)  success,required TResult Function( DataFetched value)  fetched,required TResult Function( SessionBookmarked value)  bookmarked,required TResult Function( NoInternetState value)  noInternet,required TResult Function( FailureState value)  failure,}){
final _that = this;
switch (_that) {
case _HomeState():
return initial(_that);case LoadedState():
return loaded(_that);case ProgressState():
return progress(_that);case HomeSuccess():
return success(_that);case DataFetched():
return fetched(_that);case SessionBookmarked():
return bookmarked(_that);case NoInternetState():
return noInternet(_that);case FailureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeState value)?  initial,TResult? Function( LoadedState value)?  loaded,TResult? Function( ProgressState value)?  progress,TResult? Function( HomeSuccess value)?  success,TResult? Function( DataFetched value)?  fetched,TResult? Function( SessionBookmarked value)?  bookmarked,TResult? Function( NoInternetState value)?  noInternet,TResult? Function( FailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case HomeSuccess() when success != null:
return success(_that);case DataFetched() when fetched != null:
return fetched(_that);case SessionBookmarked() when bookmarked != null:
return bookmarked(_that);case NoInternetState() when noInternet != null:
return noInternet(_that);case FailureState() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loaded,TResult Function()?  progress,TResult Function()?  success,TResult Function( Droidcon droidcon)?  fetched,TResult Function( bool bookmarked)?  bookmarked,TResult Function()?  noInternet,TResult Function( String feedback)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case HomeSuccess() when success != null:
return success();case DataFetched() when fetched != null:
return fetched(_that.droidcon);case SessionBookmarked() when bookmarked != null:
return bookmarked(_that.bookmarked);case NoInternetState() when noInternet != null:
return noInternet();case FailureState() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loaded,required TResult Function()  progress,required TResult Function()  success,required TResult Function( Droidcon droidcon)  fetched,required TResult Function( bool bookmarked)  bookmarked,required TResult Function()  noInternet,required TResult Function( String feedback)  failure,}) {final _that = this;
switch (_that) {
case _HomeState():
return initial();case LoadedState():
return loaded();case ProgressState():
return progress();case HomeSuccess():
return success();case DataFetched():
return fetched(_that.droidcon);case SessionBookmarked():
return bookmarked(_that.bookmarked);case NoInternetState():
return noInternet();case FailureState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loaded,TResult? Function()?  progress,TResult? Function()?  success,TResult? Function( Droidcon droidcon)?  fetched,TResult? Function( bool bookmarked)?  bookmarked,TResult? Function()?  noInternet,TResult? Function( String feedback)?  failure,}) {final _that = this;
switch (_that) {
case _HomeState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case HomeSuccess() when success != null:
return success();case DataFetched() when fetched != null:
return fetched(_that.droidcon);case SessionBookmarked() when bookmarked != null:
return bookmarked(_that.bookmarked);case NoInternetState() when noInternet != null:
return noInternet();case FailureState() when failure != null:
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


class LoadedState implements HomeState {
  const LoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loaded()';
}


}




/// @nodoc


class ProgressState implements HomeState {
  const ProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.progress()';
}


}




/// @nodoc


class HomeSuccess implements HomeState {
  const HomeSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.success()';
}


}




/// @nodoc


class DataFetched implements HomeState {
  const DataFetched(this.droidcon);
  

 final  Droidcon droidcon;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataFetchedCopyWith<DataFetched> get copyWith => _$DataFetchedCopyWithImpl<DataFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataFetched&&(identical(other.droidcon, droidcon) || other.droidcon == droidcon));
}


@override
int get hashCode => Object.hash(runtimeType,droidcon);

@override
String toString() {
  return 'HomeState.fetched(droidcon: $droidcon)';
}


}

/// @nodoc
abstract mixin class $DataFetchedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DataFetchedCopyWith(DataFetched value, $Res Function(DataFetched) _then) = _$DataFetchedCopyWithImpl;
@useResult
$Res call({
 Droidcon droidcon
});




}
/// @nodoc
class _$DataFetchedCopyWithImpl<$Res>
    implements $DataFetchedCopyWith<$Res> {
  _$DataFetchedCopyWithImpl(this._self, this._then);

  final DataFetched _self;
  final $Res Function(DataFetched) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? droidcon = null,}) {
  return _then(DataFetched(
null == droidcon ? _self.droidcon : droidcon // ignore: cast_nullable_to_non_nullable
as Droidcon,
  ));
}


}

/// @nodoc


class SessionBookmarked implements HomeState {
  const SessionBookmarked(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionBookmarkedCopyWith<SessionBookmarked> get copyWith => _$SessionBookmarkedCopyWithImpl<SessionBookmarked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionBookmarked&&(identical(other.bookmarked, bookmarked) || other.bookmarked == bookmarked));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarked);

@override
String toString() {
  return 'HomeState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $SessionBookmarkedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SessionBookmarkedCopyWith(SessionBookmarked value, $Res Function(SessionBookmarked) _then) = _$SessionBookmarkedCopyWithImpl;
@useResult
$Res call({
 bool bookmarked
});




}
/// @nodoc
class _$SessionBookmarkedCopyWithImpl<$Res>
    implements $SessionBookmarkedCopyWith<$Res> {
  _$SessionBookmarkedCopyWithImpl(this._self, this._then);

  final SessionBookmarked _self;
  final $Res Function(SessionBookmarked) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(SessionBookmarked(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NoInternetState implements HomeState {
  const NoInternetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.noInternet()';
}


}




/// @nodoc


class FailureState implements HomeState {
  const FailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureStateCopyWith<FailureState> get copyWith => _$FailureStateCopyWithImpl<FailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureState&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'HomeState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $FailureStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $FailureStateCopyWith(FailureState value, $Res Function(FailureState) _then) = _$FailureStateCopyWithImpl;
@useResult
$Res call({
 String feedback
});




}
/// @nodoc
class _$FailureStateCopyWithImpl<$Res>
    implements $FailureStateCopyWith<$Res> {
  _$FailureStateCopyWithImpl(this._self, this._then);

  final FailureState _self;
  final $Res Function(FailureState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(FailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
