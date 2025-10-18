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

 Object get speaker;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeakersEvent&&const DeepCollectionEquality().equals(other.speaker, speaker));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(speaker));

@override
String toString() {
  return 'SpeakersEvent(speaker: $speaker)';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchData value)?  fetch,TResult Function( BookmarkSpeaker value)?  bookmark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch(_that);case BookmarkSpeaker() when bookmark != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchData value)  fetch,required TResult Function( BookmarkSpeaker value)  bookmark,}){
final _that = this;
switch (_that) {
case FetchData():
return fetch(_that);case BookmarkSpeaker():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchData value)?  fetch,TResult? Function( BookmarkSpeaker value)?  bookmark,}){
final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch(_that);case BookmarkSpeaker() when bookmark != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String speaker)?  fetch,TResult Function( Speaker speaker)?  bookmark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch(_that.speaker);case BookmarkSpeaker() when bookmark != null:
return bookmark(_that.speaker);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String speaker)  fetch,required TResult Function( Speaker speaker)  bookmark,}) {final _that = this;
switch (_that) {
case FetchData():
return fetch(_that.speaker);case BookmarkSpeaker():
return bookmark(_that.speaker);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String speaker)?  fetch,TResult? Function( Speaker speaker)?  bookmark,}) {final _that = this;
switch (_that) {
case FetchData() when fetch != null:
return fetch(_that.speaker);case BookmarkSpeaker() when bookmark != null:
return bookmark(_that.speaker);case _:
  return null;

}
}

}

/// @nodoc


class FetchData implements SpeakersEvent {
  const FetchData(this.speaker);
  

@override final  String speaker;

/// Create a copy of SpeakersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchDataCopyWith<FetchData> get copyWith => _$FetchDataCopyWithImpl<FetchData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchData&&(identical(other.speaker, speaker) || other.speaker == speaker));
}


@override
int get hashCode => Object.hash(runtimeType,speaker);

@override
String toString() {
  return 'SpeakersEvent.fetch(speaker: $speaker)';
}


}

/// @nodoc
abstract mixin class $FetchDataCopyWith<$Res> implements $SpeakersEventCopyWith<$Res> {
  factory $FetchDataCopyWith(FetchData value, $Res Function(FetchData) _then) = _$FetchDataCopyWithImpl;
@useResult
$Res call({
 String speaker
});




}
/// @nodoc
class _$FetchDataCopyWithImpl<$Res>
    implements $FetchDataCopyWith<$Res> {
  _$FetchDataCopyWithImpl(this._self, this._then);

  final FetchData _self;
  final $Res Function(FetchData) _then;

/// Create a copy of SpeakersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? speaker = null,}) {
  return _then(FetchData(
null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BookmarkSpeaker implements SpeakersEvent {
  const BookmarkSpeaker(this.speaker);
  

@override final  Speaker speaker;

/// Create a copy of SpeakersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkSpeakerCopyWith<BookmarkSpeaker> get copyWith => _$BookmarkSpeakerCopyWithImpl<BookmarkSpeaker>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkSpeaker&&(identical(other.speaker, speaker) || other.speaker == speaker));
}


@override
int get hashCode => Object.hash(runtimeType,speaker);

@override
String toString() {
  return 'SpeakersEvent.bookmark(speaker: $speaker)';
}


}

/// @nodoc
abstract mixin class $BookmarkSpeakerCopyWith<$Res> implements $SpeakersEventCopyWith<$Res> {
  factory $BookmarkSpeakerCopyWith(BookmarkSpeaker value, $Res Function(BookmarkSpeaker) _then) = _$BookmarkSpeakerCopyWithImpl;
@useResult
$Res call({
 Speaker speaker
});




}
/// @nodoc
class _$BookmarkSpeakerCopyWithImpl<$Res>
    implements $BookmarkSpeakerCopyWith<$Res> {
  _$BookmarkSpeakerCopyWithImpl(this._self, this._then);

  final BookmarkSpeaker _self;
  final $Res Function(BookmarkSpeaker) _then;

/// Create a copy of SpeakersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? speaker = null,}) {
  return _then(BookmarkSpeaker(
null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as Speaker,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SpeakersState value)?  initial,TResult Function( LoadedState value)?  loaded,TResult Function( ProgressState value)?  progress,TResult Function( SuccessState value)?  success,TResult Function( DataFetched value)?  fetched,TResult Function( Bookmarked value)?  bookmarked,TResult Function( NoInternetState value)?  noInternet,TResult Function( FailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case SuccessState() when success != null:
return success(_that);case DataFetched() when fetched != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SpeakersState value)  initial,required TResult Function( LoadedState value)  loaded,required TResult Function( ProgressState value)  progress,required TResult Function( SuccessState value)  success,required TResult Function( DataFetched value)  fetched,required TResult Function( Bookmarked value)  bookmarked,required TResult Function( NoInternetState value)  noInternet,required TResult Function( FailureState value)  failure,}){
final _that = this;
switch (_that) {
case _SpeakersState():
return initial(_that);case LoadedState():
return loaded(_that);case ProgressState():
return progress(_that);case SuccessState():
return success(_that);case DataFetched():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SpeakersState value)?  initial,TResult? Function( LoadedState value)?  loaded,TResult? Function( ProgressState value)?  progress,TResult? Function( SuccessState value)?  success,TResult? Function( DataFetched value)?  fetched,TResult? Function( Bookmarked value)?  bookmarked,TResult? Function( NoInternetState value)?  noInternet,TResult? Function( FailureState value)?  failure,}){
final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial(_that);case LoadedState() when loaded != null:
return loaded(_that);case ProgressState() when progress != null:
return progress(_that);case SuccessState() when success != null:
return success(_that);case DataFetched() when fetched != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loaded,TResult Function()?  progress,TResult Function()?  success,TResult Function( Speaker speaker,  List<SessionExt> sessions,  List<SessionExt> allSessions,  List<Link> links)?  fetched,TResult Function( bool bookmarked)?  bookmarked,TResult Function()?  noInternet,TResult Function( String feedback)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case SuccessState() when success != null:
return success();case DataFetched() when fetched != null:
return fetched(_that.speaker,_that.sessions,_that.allSessions,_that.links);case Bookmarked() when bookmarked != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loaded,required TResult Function()  progress,required TResult Function()  success,required TResult Function( Speaker speaker,  List<SessionExt> sessions,  List<SessionExt> allSessions,  List<Link> links)  fetched,required TResult Function( bool bookmarked)  bookmarked,required TResult Function()  noInternet,required TResult Function( String feedback)  failure,}) {final _that = this;
switch (_that) {
case _SpeakersState():
return initial();case LoadedState():
return loaded();case ProgressState():
return progress();case SuccessState():
return success();case DataFetched():
return fetched(_that.speaker,_that.sessions,_that.allSessions,_that.links);case Bookmarked():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loaded,TResult? Function()?  progress,TResult? Function()?  success,TResult? Function( Speaker speaker,  List<SessionExt> sessions,  List<SessionExt> allSessions,  List<Link> links)?  fetched,TResult? Function( bool bookmarked)?  bookmarked,TResult? Function()?  noInternet,TResult? Function( String feedback)?  failure,}) {final _that = this;
switch (_that) {
case _SpeakersState() when initial != null:
return initial();case LoadedState() when loaded != null:
return loaded();case ProgressState() when progress != null:
return progress();case SuccessState() when success != null:
return success();case DataFetched() when fetched != null:
return fetched(_that.speaker,_that.sessions,_that.allSessions,_that.links);case Bookmarked() when bookmarked != null:
return bookmarked(_that.bookmarked);case NoInternetState() when noInternet != null:
return noInternet();case FailureState() when failure != null:
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


class LoadedState implements SpeakersState {
  const LoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.loaded()';
}


}




/// @nodoc


class ProgressState implements SpeakersState {
  const ProgressState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.progress()';
}


}




/// @nodoc


class SuccessState implements SpeakersState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.success()';
}


}




/// @nodoc


class DataFetched implements SpeakersState {
  const DataFetched(this.speaker, final  List<SessionExt> sessions, final  List<SessionExt> allSessions, final  List<Link> links): _sessions = sessions,_allSessions = allSessions,_links = links;
  

 final  Speaker speaker;
 final  List<SessionExt> _sessions;
 List<SessionExt> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}

 final  List<SessionExt> _allSessions;
 List<SessionExt> get allSessions {
  if (_allSessions is EqualUnmodifiableListView) return _allSessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allSessions);
}

 final  List<Link> _links;
 List<Link> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataFetchedCopyWith<DataFetched> get copyWith => _$DataFetchedCopyWithImpl<DataFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataFetched&&(identical(other.speaker, speaker) || other.speaker == speaker)&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&const DeepCollectionEquality().equals(other._allSessions, _allSessions)&&const DeepCollectionEquality().equals(other._links, _links));
}


@override
int get hashCode => Object.hash(runtimeType,speaker,const DeepCollectionEquality().hash(_sessions),const DeepCollectionEquality().hash(_allSessions),const DeepCollectionEquality().hash(_links));

@override
String toString() {
  return 'SpeakersState.fetched(speaker: $speaker, sessions: $sessions, allSessions: $allSessions, links: $links)';
}


}

/// @nodoc
abstract mixin class $DataFetchedCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
  factory $DataFetchedCopyWith(DataFetched value, $Res Function(DataFetched) _then) = _$DataFetchedCopyWithImpl;
@useResult
$Res call({
 Speaker speaker, List<SessionExt> sessions, List<SessionExt> allSessions, List<Link> links
});




}
/// @nodoc
class _$DataFetchedCopyWithImpl<$Res>
    implements $DataFetchedCopyWith<$Res> {
  _$DataFetchedCopyWithImpl(this._self, this._then);

  final DataFetched _self;
  final $Res Function(DataFetched) _then;

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? speaker = null,Object? sessions = null,Object? allSessions = null,Object? links = null,}) {
  return _then(DataFetched(
null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as Speaker,null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<SessionExt>,null == allSessions ? _self._allSessions : allSessions // ignore: cast_nullable_to_non_nullable
as List<SessionExt>,null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<Link>,
  ));
}


}

/// @nodoc


class Bookmarked implements SpeakersState {
  const Bookmarked(this.bookmarked);
  

 final  bool bookmarked;

/// Create a copy of SpeakersState
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
  return 'SpeakersState.bookmarked(bookmarked: $bookmarked)';
}


}

/// @nodoc
abstract mixin class $BookmarkedCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
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

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookmarked = null,}) {
  return _then(Bookmarked(
null == bookmarked ? _self.bookmarked : bookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NoInternetState implements SpeakersState {
  const NoInternetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpeakersState.noInternet()';
}


}




/// @nodoc


class FailureState implements SpeakersState {
  const FailureState(this.feedback);
  

 final  String feedback;

/// Create a copy of SpeakersState
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
  return 'SpeakersState.failure(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $FailureStateCopyWith<$Res> implements $SpeakersStateCopyWith<$Res> {
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

/// Create a copy of SpeakersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(FailureState(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
