// Mocks generated by Mockito 5.2.0 from annotations
// in todo_app/test/fetch_album_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:convert' as _i8;
import 'dart:typed_data' as _i9;

import 'package:bloc/bloc.dart' as _i14;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:connectivity_plus/connectivity_plus.dart' as _i13;
import 'package:http/src/base_request.dart' as _i10;
import 'package:http/src/client.dart' as _i6;
import 'package:http/src/response.dart' as _i2;
import 'package:http/src/streamed_response.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:todo_app/bloc/connectivity/connectivity_cubit.dart' as _i5;
import 'package:todo_app/data/models/task_model.dart' as _i12;
import 'package:todo_app/data/repositories/firestore_crud.dart' as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResponse_0 extends _i1.Fake implements _i2.Response {}

class _FakeStreamedResponse_1 extends _i1.Fake implements _i3.StreamedResponse {
}

class _FakeFirebaseFirestore_2 extends _i1.Fake
    implements _i4.FirebaseFirestore {}

class _FakeConnectivityState_3 extends _i1.Fake
    implements _i5.ConnectivityState {}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i6.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<_i2.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<_i2.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i8.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<_i2.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i8.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<_i2.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i8.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<_i2.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i8.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_0()))
          as _i7.Future<_i2.Response>);
  @override
  _i7.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i9.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i9.Uint8List>.value(_i9.Uint8List(0)))
          as _i7.Future<_i9.Uint8List>);
  @override
  _i7.Future<_i3.StreamedResponse> send(_i10.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i3.StreamedResponse>.value(_FakeStreamedResponse_1()))
          as _i7.Future<_i3.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [FireStoreCrud].
///
/// See the documentation for Mockito's code generation for more information.
class MockFireStoreCrud extends _i1.Mock implements _i11.FireStoreCrud {
  MockFireStoreCrud() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FirebaseFirestore get firestore =>
      (super.noSuchMethod(Invocation.getter(#firestore),
          returnValue: _FakeFirebaseFirestore_2()) as _i4.FirebaseFirestore);
  @override
  _i7.Future<void> addTask({_i12.TaskModel? task}) =>
      (super.noSuchMethod(Invocation.method(#addTask, [], {#task: task}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Stream<List<_i12.TaskModel>> getTasks({String? mydate}) =>
      (super.noSuchMethod(Invocation.method(#getTasks, [], {#mydate: mydate}),
              returnValue: Stream<List<_i12.TaskModel>>.empty())
          as _i7.Stream<List<_i12.TaskModel>>);
  @override
  _i7.Future<void> updateTask(
          {String? title,
          dynamic note,
          dynamic docid,
          dynamic date,
          dynamic starttime,
          dynamic endtime,
          int? reminder,
          dynamic colorindex}) =>
      (super.noSuchMethod(
          Invocation.method(#updateTask, [], {
            #title: title,
            #note: note,
            #docid: docid,
            #date: date,
            #starttime: starttime,
            #endtime: endtime,
            #reminder: reminder,
            #colorindex: colorindex
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> deleteTask({String? docid}) =>
      (super.noSuchMethod(Invocation.method(#deleteTask, [], {#docid: docid}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
}

/// A class which mocks [ConnectivityCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityCubit extends _i1.Mock implements _i5.ConnectivityCubit {
  MockConnectivityCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set hasConnection(bool? _hasConnection) =>
      super.noSuchMethod(Invocation.setter(#hasConnection, _hasConnection),
          returnValueForMissingStub: null);
  @override
  _i5.ConnectivityState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
          returnValue: _FakeConnectivityState_3()) as _i5.ConnectivityState);
  @override
  _i7.Stream<_i5.ConnectivityState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i5.ConnectivityState>.empty())
          as _i7.Stream<_i5.ConnectivityState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  _i7.Future<void> initializeConnectivity() =>
      (super.noSuchMethod(Invocation.method(#initializeConnectivity, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<bool?> checkConnection(_i13.ConnectivityResult? result) =>
      (super.noSuchMethod(Invocation.method(#checkConnection, [result]),
          returnValue: Future<bool?>.value()) as _i7.Future<bool?>);
  @override
  void connectionChangeController(bool? _hasConnection) => super.noSuchMethod(
      Invocation.method(#connectionChangeController, [_hasConnection]),
      returnValueForMissingStub: null);
  @override
  void emit(_i5.ConnectivityState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onChange(_i14.Change<_i5.ConnectivityState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  _i7.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
}