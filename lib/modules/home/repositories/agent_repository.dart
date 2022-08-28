import 'package:dio/dio.dart';
import 'package:valorant/modules/home/models/agent_model.dart';

class AgentRepository {
  final dio = Dio();
  final url = 'https://valorant-api.com/v1/agents';

  Future<List<AgentModel>> getAgents() async {
    final response = await dio.get(url);
    final convertedList = response.data!['data'] as List;

    List<AgentModel> agents = [];
    for (var item in convertedList) {
      final data = AgentModel.fromJson(item);
      agents.add(data);
    }
    return agents;
  }
}
