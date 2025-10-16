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


class FetchData implements SessionsEvent {
  const FetchData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsEvent.fetch()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SessionsState value)?  initial,TResult Function( SessionsLoadedState value)?  loaded,TResult Function( SessionsProgressState value)?  progress,TResult Function( SessionsSuccessState value)?  success,TResult Function( SessionsFetchedState value)?  fetched,TResult Function( SessionsBookmarkedState value)?  bookmarked,TResult Function( SessionsFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial(_that);case SessionsLoadedState() when loaded != null:
return loaded(_that);case SessionsProgressState() when progress != null:
return progress(_that);case SessionsSuccessState() when success != null:
return success(_that);case SessionsFetchedState() when fetched != null:
return fetched(_that);case SessionsBookmarkedState() when bookmarked != null:
return bookmarked(_that);case SessionsFailureState() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SessionsState value)  initial,required TResult Function( SessionsLoadedState value)  loaded,required TResult Function( SessionsProgressState value)  progress,required TResult Function( SessionsSuccessState value)  success,required TResult Function( SessionsFetchedState value)  fetched,required TResult Function( SessionsBookmarkedState value)  bookmarked,required TResult Function( SessionsFailureState value)  failure,}){
final _that = this;
switch (_that) {
case _SessionsState():
return initial(_that);case SessionsLoadedState():
return loaded(_that);case SessionsProgressState():
return progress(_that);case SessionsSuccessState():
return success(_that);case SessionsFetchedState():
return fetched(_that);case SessionsBookmarkedState():
return bookmarked(_that);case SessionsFailureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SessionsState value)?  initial,TResult? Function( SessionsLoadedState value)?  loaded,TResult? Function( SessionsProgressState value)?  progress,TResult? Function( SessionsSuccessState value)?  success,TResult? Function( SessionsFetchedState value)?  fetched,TResult? Function( SessionsBookmarkedState value)?  bookmarked,TResult? Function( SessionsFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _SessionsState() when initial != null:
return initial(_that);case SessionsLoadedState() when loaded != null:
return loaded(_that);case SessionsProgressState() when progress != null:
return progress(_that);case SessionsSuccessState() when success != null:
return success(_that);case SessionsFetchedState() when fetched != null:
return fetched(_that);case SessionsBookmarkedState() when bookmarked != null:
return bookmarked(_that);case SessionsFailureState() when failure != null:
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
case _SessionsState() when initial != null:
return initial();case SessionsLoadedState() when loaded != null:
return loaded();case SessionsProgressState() when progress != null:
return progress();case SessionsSuccessState() when success != null:
return success();case SessionsFetchedState() when fetched != null:
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SessionsBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case SessionsFailureState() when failure != null:
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
case _SessionsState():
return initial();case SessionsLoadedState():
return loaded();case SessionsProgressState():
return progress();case SessionsSuccessState():
return success();case SessionsFetchedState():
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SessionsBookmarkedState():
return bookmarked(_that.bookmarked);case SessionsFailureState():
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
case _SessionsState() when initial != null:
return initial();case SessionsLoadedState() when loaded != null:
return loaded();case SessionsProgressState() when progress != null:
return progress();case SessionsSuccessState() when success != null:
return success();case SessionsFetchedState() when fetched != null:
return fetched(_that.bookmarks,_that.rooms,_that.speakers,_that.sessions);case SessionsBookmarkedState() when bookmarked != null:
return bookmarked(_that.bookmarked);case SessionsFailureState() when failure != null:
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


class SessionsLoadedState implements SessionsState {
  const SessionsLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.loaded()';
}


}




/// @nodoc


class SessionsProgressState implements SessionsState {
  const SessionsProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.progress()';
}


}




/// @nodoc


class SessionsSuccessState implements SessionsState {
  const SessionsSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionsState.success()';
}


}




/// @nodoc


class SessionsFetchedState implements SessionsState {
  const SessionsFetchedState(final  List<Bookmark> bookmarks, final  List<Room> rooms, final  List<Speaker> speakers, final  List<Session> sessions): _bookmarks = bookmarks,_rooms = rooms,_speakers = speakers,_sessions = sessions;
  

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


/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsFetchedStateCopyWith<SessionsFetchedState> get copyWith => _$SessionsFetchedStateCopyWithImpl<SessionsFetchedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsFetchedState&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks)&&const DeepCollectionEquality().equals(other._rooms, _rooms)&&const DeepCollectionEquality().equals(other._speakers, _speakers)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookmarks),const DeepCollectionEquality().hash(_rooms),const DeepCollectionEquality().hash(_speakers),const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'SessionsState.fetched(bookmarks: $bookmarks, rooms: $rooms, speakers: $speakers, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $SessionsFetchedStateCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SessionsFetchedStateCopyWith(SessionsFetchedState value, $Res Function(SessionsFetchedState) _then) = _$SessionsFetchedStateCopyWithImpl;
@useResult
$Res call({
 List<Bookmark> bookmarks, List<Room> rooms, List<Speaker> speakers, List<Session> sessions
});




}
/// @nodoc
class _$SessionsFetchedStateCopyWithImpl<$Res>
    implements $SessionsFetchedStateCopyWith<$Res> {
  _$SessionsFetchedStateCopyWithImpl(this._self, this._then);

  final SessionsFetchedState _self;
  final $Res Function(SessionsFetchedState) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarks = null,Object? rooms = null,Object? speakers = null,Object? sessions = null,}) {
  return _then(SessionsFetchedState(
null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as List<Bookmark>,null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>,null == speakers ? _self._speakers : speakers // ignore: cast_nullable_to_non_nullable
as List<Speaker>,null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<Session>,
  ));
}


}

/// @nodoc


class SessionsBookmarkedState implements SessionsState {
  const SessionsBookmarkedState(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsBookmarkedStateCopyWith<SessionsBookmarkedState> get copyWith => _$SessionsBookmarkedStateCopyWithImpl<SessionsBookmarkedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsBookmarkedState&&(identical(other.bookmarked, bookmarked) || other.bookmarked == bookmarked));
}


@override
int get hashCode => Object.hash(runtimeType,bookmarked);

@override
String toString() {
  return 'SessionsState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $SessionsBookmarkedStateCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SessionsBookmarkedStateCopyWith(SessionsBookmarkedState value, $Res Function(SessionsBookmarkedState) _then) = _$SessionsBookmarkedStateCopyWithImpl;
@useResult
$Res call({
 bool bookmarked
});




}
/// @nodoc
class _$SessionsBookmarkedStateCopyWithImpl<$Res>
    implements $SessionsBookmarkedStateCopyWith<$Res> {
  _$SessionsBookmarkedStateCopyWithImpl(this._self, this._then);

  final SessionsBookmarkedState _self;
  final $Res Function(SessionsBookmarkedState) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(SessionsBookmarkedState(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SessionsFailureState implements SessionsState {
  const SessionsFailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionsFailureStateCopyWith<SessionsFailureState> get copyWith => _$SessionsFailureStateCopyWithImpl<SessionsFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionsFailureState&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode => Object.hash(runtimeType,feedback);

@override
String toString() {
  return 'SessionsState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $SessionsFailureStateCopyWith<$Res> implements $SessionsStateCopyWith<$Res> {
  factory $SessionsFailureStateCopyWith(SessionsFailureState value, $Res Function(SessionsFailureState) _then) = _$SessionsFailureStateCopyWithImpl;
@useResult
$Res call({
 String feedback
});




}
/// @nodoc
class _$SessionsFailureStateCopyWithImpl<$Res>
    implements $SessionsFailureStateCopyWith<$Res> {
  _$SessionsFailureStateCopyWithImpl(this._self, this._then);

  final SessionsFailureState _self;
  final $Res Function(SessionsFailureState) _then;

/// Create a copy of SessionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(SessionsFailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
