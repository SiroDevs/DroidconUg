// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speakers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpeakersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersEvent()';
}


}

/// @nodoc
class $SpeakersEventCopyWith<$Res>  {
$SpeakersEventCopyWith(SpeakersEvent _, $Res Function(SpeakersEvent) __);
}


/// Adds pattern-matching-related methods to [SpeakersEvent].
extension SpeakersEventPatterns on SpeakersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchData value)?  fetch,TResult Function( BookmarkSession value)?  bookmark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchData() when fetch != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchData value)  fetch,required TResult Function( BookmarkSession value)  bookmark,}){
final _that = this;
switch (_that) {
case FetchData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchData value)?  fetch,TResult? Function( BookmarkSession value)?  bookmark,}){
final _that = this;
switch (_that) {
case FetchData() when fetch != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( Session session)?  bookmark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch();case BookmarkSession() when bookmark != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( Session session)  bookmark,}) {final _that = this;
switch (_that) {
case FetchData():
return fetch();case BookmarkSession():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( Session session)?  bookmark,}) {final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch();case BookmarkSession() when bookmark != null:
return bookmark(_that.session);case _:
  return null;

}
}

}

/// @nodoc


class FetchData implements SpeakersEvent {
  const FetchData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersEvent.fetch()';
}


}




/// @nodoc


class BookmarkSession implements SpeakersEvent {
  const BookmarkSession(this.session);
  

 final  Session session;

/// Create a copy of SpeakersEvent
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
  return 'SpeakersEvent.bookmark(session: $session)';
}


}

/// @nodoc
abstract mixin class $BookmarkSessionCopyWith<$Res> implements $SpeakersEventCopyWith<$Res> {
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

/// Create a copy of SpeakersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(BookmarkSession(
null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}


}

/// @nodoc
mixin _$SpeakersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState()';
}


}

/// @nodoc
class $SpeakersStateCopyWith<$Res>  {
$SpeakersStateCopyWith(SpeakersState _, $Res Function(SpeakersState) __);
}


/// Adds pattern-matching-related methods to [SpeakersState].
extension SpeakersStatePatterns on SpeakersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SpeakersState value)?  initial,TResult Function( SpeakersLoadedState value)?  loaded,TResult Function( SpeakersProgressState value)?  progress,TResult Function( SpeakersSuccessState value)?  success,TResult Function( SpeakersFetchedState value)?  fetched,TResult Function( SpeakersBookmarkedState value)?  bookmarked,TResult Function( SpeakersFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial(_that);case SpeakersLoadedState() when loaded != null:
return loaded(_that);case SpeakersProgressState() when progress != null:
return progress(_that);case SpeakersSuccessState() when success != null:
return success(_that);case SpeakersFetchedState() when fetched != null:
return fetched(_that);case SpeakersBookmarkedState() when bookmarked != null:
return bookmarked(_that);case SpeakersFailureState() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SpeakersState value)  initial,required TResult Function( SpeakersLoadedState value)  loaded,required TResult Function( SpeakersProgressState value)  progress,required TResult Function( SpeakersSuccessState value)  success,required TResult Function( SpeakersFetchedState value)  fetched,required TResult Function( SpeakersBookmarkedState value)  bookmarked,required TResult Function( SpeakersFailureState value)  failure,}){
final _that = this;
switch (_that) {
case _SpeakersState():
return initial(_that);case SpeakersLoadedState():
return loaded(_that);case SpeakersProgressState():
return progress(_that);case SpeakersSuccessState():
return success(_that);case SpeakersFetchedState():
return fetched(_that);case SpeakersBookmarkedState():
return bookmarked(_that);case SpeakersFailureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SpeakersState value)?  initial,TResult? Function( SpeakersLoadedState value)?  loaded,TResult? Function( SpeakersProgressState value)?  progress,TResult? Function( SpeakersSuccessState value)?  success,TResult? Function( SpeakersFetchedState value)?  fetched,TResult? Function( SpeakersBookmarkedState value)?  bookmarked,TResult? Function( SpeakersFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial(_that);case SpeakersLoadedState() when loaded != null:
return loaded(_that);case SpeakersProgressState() when progress != null:
return progress(_that);case SpeakersSuccessState() when success != null:
return success(_that);case SpeakersFetchedState() when fetched != null:
return fetched(_that);case SpeakersBookmarkedState() when bookmarked != null:
return bookmarked(_that);case SpeakersFailureState() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loaded,TResult Function()?  progress,TResult Function()?  success,TResult Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)?  fetched,TResult Function( bool bookmarked)?  bookmarked,TResult Function( String feedback)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial();case SpeakersLoadedState() when loaded != null:
return loaded();case SpeakersProgressState() when progress != null:
return progress();case SpeakersSuccessState() when success != null:
return success();case SpeakersFetchedState() when fetched != null:
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SpeakersBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case SpeakersFailureState() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loaded,required TResult Function()  progress,required TResult Function()  success,required TResult Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)  fetched,required TResult Function( bool bookmarked)  bookmarked,required TResult Function( String feedback)  failure,}) {final _that = this;
switch (_that) {
case _SpeakersState():
return initial();case SpeakersLoadedState():
return loaded();case SpeakersProgressState():
return progress();case SpeakersSuccessState():
return success();case SpeakersFetchedState():
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SpeakersBookmarkedState():
return bookmarked(_that.bookmarked);case SpeakersFailureState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loaded,TResult? Function()?  progress,TResult? Function()?  success,TResult? Function( List<Bookmark> bookmarks,  List<Room> rooms,  List<Speaker> speakers,  List<Session> sessions)?  fetched,TResult? Function( bool bookmarked)?  bookmarked,TResult? Function( String feedback)?  failure,}) {final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial();case SpeakersLoadedState() when loaded != null:
return loaded();case SpeakersProgressState() when progress != null:
return progress();case SpeakersSuccessState() when success != null:
return success();case SpeakersFetchedState() when fetched != null:
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SpeakersBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case SpeakersFailureState() when failure != null:
return failure(_that.feedback);case _:
  return null;

}
}

}

/// @nodoc


class _SpeakersState implements SpeakersState {
  const _SpeakersState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeakersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.initial()';
}


}




/// @nodoc


class SpeakersLoadedState implements SpeakersState {
  const SpeakersLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.loaded()';
}


}




/// @nodoc


class SpeakersProgressState implements SpeakersState {
  const SpeakersProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.progress()';
}


}




/// @nodoc


class SpeakersSuccessState implements SpeakersState {
  const SpeakersSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.success()';
}


}




/// @nodoc


class SpeakersFetchedState implements SpeakersState {
  const SpeakersFetchedState(final  List<Bookmark> bookmarks, final  List<Room> rooms, final  List<Speaker> speakers, final  List<Session> sessions): _bookmarks = bookmarks,_rooms = rooms,_speakers = speakers,_sessions = sessions;
  

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


/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeakersFetchedStateCopyWith<SpeakersFetchedState> get copyWith => _$SpeakersFetchedStateCopyWithImpl<SpeakersFetchedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersFetchedState&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks)&&const DeepCollectionEquality().equals(other._rooms, _rooms)&&const DeepCollectionEquality().equals(other._speakers, _speakers)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookmarks),const DeepCollectionEquality().hash(_rooms),const DeepCollectionEquality().hash(_speakers),const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'SpeakersState.fetched(bookmarks: $bookmarks, rooms: $rooms, speakers: $speakers, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $SpeakersFetchedStateCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
  factory $SpeakersFetchedStateCopyWith(SpeakersFetchedState value, $Res Function(SpeakersFetchedState) _then) = _$SpeakersFetchedStateCopyWithImpl;
@useResult
$Res call({
 List<Bookmark> bookmarks, List<Room> rooms, List<Speaker> speakers, List<Session> sessions
});




}
/// @nodoc
class _$SpeakersFetchedStateCopyWithImpl<$Res>
    implements $SpeakersFetchedStateCopyWith<$Res> {
  _$SpeakersFetchedStateCopyWithImpl(this._self, this._then);

  final SpeakersFetchedState _self;
  final $Res Function(SpeakersFetchedState) _then;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarks = null,Object? rooms = null,Object? speakers = null,Object? sessions = null,}) {
  return _then(SpeakersFetchedState(
null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as List<Bookmark>,null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>,null == speakers ? _self._speakers : speakers // ignore: cast_nullable_to_non_nullable
as List<Speaker>,null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<Session>,
  ));
}


}

/// @nodoc


class SpeakersBookmarkedState implements SpeakersState {
  const SpeakersBookmarkedState(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeakersBookmarkedStateCopyWith<SpeakersBookmarkedState> get copyWith => _$SpeakersBookmarkedStateCopyWithImpl<SpeakersBookmarkedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersBookmarkedState&&(identical(other.bookmarked, bookmarked) || other.bookmarked == bookmarked));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarked);

@override
String toString() {
  return 'SpeakersState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $SpeakersBookmarkedStateCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
  factory $SpeakersBookmarkedStateCopyWith(SpeakersBookmarkedState value, $Res Function(SpeakersBookmarkedState) _then) = _$SpeakersBookmarkedStateCopyWithImpl;
@useResult
$Res call({
 bool bookmarked
});




}
/// @nodoc
class _$SpeakersBookmarkedStateCopyWithImpl<$Res>
    implements $SpeakersBookmarkedStateCopyWith<$Res> {
  _$SpeakersBookmarkedStateCopyWithImpl(this._self, this._then);

  final SpeakersBookmarkedState _self;
  final $Res Function(SpeakersBookmarkedState) _then;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(SpeakersBookmarkedState(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SpeakersFailureState implements SpeakersState {
  const SpeakersFailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeakersFailureStateCopyWith<SpeakersFailureState> get copyWith => _$SpeakersFailureStateCopyWithImpl<SpeakersFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersFailureState&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'SpeakersState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $SpeakersFailureStateCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
  factory $SpeakersFailureStateCopyWith(SpeakersFailureState value, $Res Function(SpeakersFailureState) _then) = _$SpeakersFailureStateCopyWithImpl;
@useResult
$Res call({
 String feedback
});




}
/// @nodoc
class _$SpeakersFailureStateCopyWithImpl<$Res>
    implements $SpeakersFailureStateCopyWith<$Res> {
  _$SpeakersFailureStateCopyWithImpl(this._self, this._then);

  final SpeakersFailureState _self;
  final $Res Function(SpeakersFailureState) _then;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(SpeakersFailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
