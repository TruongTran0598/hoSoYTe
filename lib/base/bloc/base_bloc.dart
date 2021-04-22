import 'dart:html';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState);
  Function(String error, int statusCode) onErrorCallBack;

  void setOnErrorListenner(
      Function(String error, int statusCode) onErrorCallBack) {
    this.onErrorCallBack = onErrorCallBack;
  }

  
}
