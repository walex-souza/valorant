import 'package:dio/dio.dart';
import 'package:valorant/modules/home/models/agents_model.dart';

class AgentsRepository {
  final dio = Dio();
  final url = 'https://valorant-api.com/v1/agents';

  Future<List<AgentDataModel>> getAgents() async {
    final response = await dio.get(url);
    final convertedList = response.data!['data'] as List;

    List<AgentDataModel> agents = [];
    for (var item in convertedList) {
      final data = AgentDataModel.fromJson(item);
      agents.add(data);
    }
    return agents;
  }
}
