import 'package:faiba/models/agents.dart';
import 'package:rxdart/rxdart.dart';

class AgentBloc {
  final _agents = BehaviorSubject<List<Agent>>();

  AgentBloc() {
    getAgents();
  }

  // Stream of agents
  Stream<List<Agent>> get agents => _agents.stream;

  // Adding agents;
  Function(List<Agent>) get addAgents => _agents.sink.add;

  //  since we have created a list of agents in Agents.dart file
  // lets get them and add to the sink
  getAgents() {
    var agentList = List<Agent>();

    try {
      // // get agents from agent class
      var agents = Agent.agents;
      agents.forEach((agent) => agentList.add(agent));
      // for (var agent in agents) {
      //   return agentList.add(agent);
      // }

    } catch (error) {
      throw Exception('Error occured');
    }

    // Add our agents to the stream
    addAgents(agentList);
  }

  // close our stream
  void dispose() {
    _agents.close();
  }
}
