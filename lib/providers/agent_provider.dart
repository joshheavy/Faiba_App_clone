import 'package:faiba/bloc/agent_bloc.dart';
import 'package:flutter/material.dart';

class AgentProvider with ChangeNotifier {
  AgentBloc _bloc;
  
  AgentProvider() {
    _bloc = AgentBloc();
  }

  // create a getter to get the bloc
  AgentBloc get bloc => _bloc;
}
