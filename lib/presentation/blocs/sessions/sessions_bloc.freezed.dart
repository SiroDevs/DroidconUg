// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsEvent()';
}


}

/// @nodoc
class $SessionsEventCopyWith<$Res>  {
$SessionsEventCopyWith(SessionsEvent _, $Res Function(SessionsEvent) __);
}


/// Adds pattern-matching-related methods to [SessionsEvent].
extension SessionsEventPatterns on SessionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSpeaker value)?  fetch,TResult Function( BookmarkSession value)?  bookmark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSpeaker() when fetch != null:
return fetch(_that);case BookmarkSession() when bookmark != null:
return bookmark(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSpeaker value)  fetch,required TResult Function( BookmarkSession value)  bookmark,}){
final _that = this;
switch (_that) {
case FetchSpeaker():
return fetch(_that);case BookmarkSession():
return bookmark(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSpeaker value)?  fetch,TResult? Function( BookmarkSession value)?  bookmark,}){
final _that = this;
switch (_that) {
case FetchSpeaker() when fetch != null:
return fetch(_that);case BookmarkSession() when bookmark != null:
return bookmark(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  fetch,TResult Function( Session session)?  bookmark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSpeaker() when fetch != null:
return fetch(_that.id);case BookmarkSession() when bookmark != null:
return bookmark(_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  fetch,required TResult Function( Session session)  bookmark,}) {final _that = this;
switch (_that) {
case FetchSpeaker():
return fetch(_that.id);case BookmarkSession():
return bookmark(_that.session);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  fetch,TResult? Function( Session session)?  bookmark,}) {final _that = this;
switch (_that) {
case FetchSpeaker() when fetch != null:
return fetch(_that.id);case BookmarkSession() when bookmark != null:
return bookmark(_that.session);case _:
  return null;

}
}

}

/// @nodoc


class FetchSpeaker implements SessionsEvent {
  const FetchSpeaker(this.id);
  

 final  String id;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSpeakerCopyWith<FetchSpeaker> get copyWith => _$FetchSpeakerCopyWithImpl<FetchSpeaker>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSpeaker&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SessionsEvent.fetch(id: $id)';
}


}

/// @nodoc
abstract mixin class $FetchSpeakerCopyWith<$Res> implements $SessionsEventCopyWith<$Res> {
  factory $FetchSpeakerCopyWith(FetchSpeaker value, $Res Function(FetchSpeaker) _then) = _$FetchSpeakerCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$FetchSpeakerCopyWithImpl<$Res>
    implements $FetchSpeakerCopyWith<$Res> {
  _$FetchSpeakerCopyWithImpl(this._self, this._then);

  final FetchSpeaker _self;
  final $Res Function(FetchSpeaker) _then;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(FetchSpeaker(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BookmarkSession implements SessionsEvent {
  const BookmarkSession(this.session);
  

 final  Session session;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkSessionCopyWith<BookmarkSession> get copyWith => _$BookmarkSessionCopyWithImpl<BookmarkSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkSession&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'SessionsEvent.bookmark(session: $session)';
}


}

/// @nodoc
abstract mixin class $BookmarkSessionCopyWith<$Res> implements $SessionsEventCopyWith<$Res> {
  factory $BookmarkSessionCopyWith(BookmarkSession value, $Res Function(BookmarkSession) _then) = _$BookmarkSessionCopyWithImpl;
@useResult
$Res call({
 Session session
});




}
/// @nodoc
class _$BookmarkSessionCopyWithImpl<$Res>
    implements $BookmarkSessionCopyWith<$Res> {
  _$BookmarkSessionCopyWithImpl(this._self, this._then);

  final BookmarkSession _self;
  final $Res Function(BookmarkSession) _then;

/// Create a copy of SessionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(BookmarkSession(
null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}


}

/// @nodoc
mixin _$SessionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState()';
}


}

/// @nodoc
class $SessionsStateCopyWith<$Res>  {
$SessionsStateCopyWith(SessionsState _, $Res Function(SessionsState) __);
}


/// Adds pattern-matching-related methods to [SessionsState].
extension SessionsStatePatterns on SessionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SessionsState value)?  initial,TResult Function( LoadedState value)?  loaded,TResult Function( ProgressState value)?  progress,TResult Function( SuccessState value)?  success,TResult Function( SpeakerFetched value)?  fetched,TResult Function( Bookmarked value)?  bookmarked,TResult Function( NoInternetState value)?  noInternet,TResult Function( FailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case SuccessState() when success != null:
return success(_that);case SpeakerFetched() when fetched != null:
return fetched(_that);case Bookmarked() when bookmarked != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SessionsState value)  initial,required TResult Function( LoadedState value)  loaded,required TResult Function( ProgressState value)  progress,required TResult Function( SuccessState value)  success,required TResult Function( SpeakerFetched value)  fetched,required TResult Function( Bookmarked value)  bookmarked,required TResult Function( NoInternetState value)  noInternet,required TResult Function( FailureState value)  failure,}){
final _that = this;
switch (_that) {
case _SessionsState():
return initial(_that);case LoadedState():
return loaded(_that);case ProgressState():
return progress(_that);case SuccessState():
return success(_that);case SpeakerFetched():
return fetched(_that);case Bookmarked():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SessionsState value)?  initial,TResult? Function( LoadedState value)?  loaded,TResult? Function( ProgressState value)?  progress,TResult? Function( SuccessState value)?  success,TResult? Function( SpeakerFetched value)?  fetched,TResult? Function( Bookmarked value)?  bookmarked,TResult? Function( NoInternetState value)?  noInternet,TResult? Function( FailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case SuccessState() when success != null:
return success(_that);case SpeakerFetched() when fetched != null:
return fetched(_that);case Bookmarked() when bookmarked != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loaded,TResult Function()?  progress,TResult Function()?  success,TResult Function( Speaker speaker)?  fetched,TResult Function( bool bookmarked)?  bookmarked,TResult Function()?  noInternet,TResult Function( String feedback)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case SuccessState() when success != null:
return success();case SpeakerFetched() when fetched != null:
return fetched(_that.speaker);case Bookmarked() when bookmarked != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loaded,required TResult Function()  progress,required TResult Function()  success,required TResult Function( Speaker speaker)  fetched,required TResult Function( bool bookmarked)  bookmarked,required TResult Function()  noInternet,required TResult Function( String feedback)  failure,}) {final _that = this;
switch (_that) {
case _SessionsState():
return initial();case LoadedState():
return loaded();case ProgressState():
return progress();case SuccessState():
return success();case SpeakerFetched():
return fetched(_that.speaker);case Bookmarked():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loaded,TResult? Function()?  progress,TResult? Function()?  success,TResult? Function( Speaker speaker)?  fetched,TResult? Function( bool bookmarked)?  bookmarked,TResult? Function()?  noInternet,TResult? Function( String feedback)?  failure,}) {final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case SuccessState() when success != null:
return success();case SpeakerFetched() when fetched != null:
return fetched(_that.speaker);case Bookmarked() when bookmarked != null:
return bookmarked(_that.bookmarked);case NoInternetState() when noInternet != null:
return noInternet();case FailureState() when failure != null:
return failure(_that.feedback);case _:
  return null;

}
}

}

/// @nodoc


class _SessionsState implements SessionsState {
  const _SessionsState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.initial()';
}


}




/// @nodoc


class LoadedState implements SessionsState {
  const LoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.loaded()';
}


}




/// @nodoc


class ProgressState implements SessionsState {
  const ProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.progress()';
}


}




/// @nodoc


class SuccessState implements SessionsState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.success()';
}


}




/// @nodoc


class SpeakerFetched implements SessionsState {
  const SpeakerFetched(this.speaker);
  

 final  Speaker speaker;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeakerFetchedCopyWith<SpeakerFetched> get copyWith => _$SpeakerFetchedCopyWithImpl<SpeakerFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakerFetched&&(identical(other.speaker, speaker) || other.speaker == speaker));
}


@override
int get hashCode => Object.hash(runtimeType,speaker);

@override
String toString() {
  return 'SessionsState.fetched(speaker: $speaker)';
}


}

/// @nodoc
abstract mixin class $SpeakerFetchedCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SpeakerFetchedCopyWith(SpeakerFetched value, $Res Function(SpeakerFetched) _then) = _$SpeakerFetchedCopyWithImpl;
@useResult
$Res call({
 Speaker speaker
});




}
/// @nodoc
class _$SpeakerFetchedCopyWithImpl<$Res>
    implements $SpeakerFetchedCopyWith<$Res> {
  _$SpeakerFetchedCopyWithImpl(this._self, this._then);

  final SpeakerFetched _self;
  final $Res Function(SpeakerFetched) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? speaker = null,}) {
  return _then(SpeakerFetched(
null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as Speaker,
  ));
}


}

/// @nodoc


class Bookmarked implements SessionsState {
  const Bookmarked(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkedCopyWith<Bookmarked> get copyWith => _$BookmarkedCopyWithImpl<Bookmarked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bookmarked&&(identical(other.bookmarked, bookmarked) || other.bookmarked == bookmarked));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarked);

@override
String toString() {
  return 'SessionsState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $BookmarkedCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $BookmarkedCopyWith(Bookmarked value, $Res Function(Bookmarked) _then) = _$BookmarkedCopyWithImpl;
@useResult
$Res call({
 bool bookmarked
});




}
/// @nodoc
class _$BookmarkedCopyWithImpl<$Res>
    implements $BookmarkedCopyWith<$Res> {
  _$BookmarkedCopyWithImpl(this._self, this._then);

  final Bookmarked _self;
  final $Res Function(Bookmarked) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(Bookmarked(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NoInternetState implements SessionsState {
  const NoInternetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.noInternet()';
}


}




/// @nodoc


class FailureState implements SessionsState {
  const FailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of SessionsState
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
  return 'SessionsState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $FailureStateCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
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

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(FailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
