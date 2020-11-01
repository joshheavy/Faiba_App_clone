import 'package:faiba/models/agents.dart';


var agents = Agent.agents;

class AgentManager {
  Stream<List<Agent>> get agentList async* {
    for (var i = 0; i < agents.length; i++) {
      await Future.delayed(Duration(seconds: 2));
      yield agents.sublist(0, i + 1);
    }
  }
}