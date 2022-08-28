import 'package:flutter_test/flutter_test.dart';
import 'package:valorant/modules/home/repositories/agents_repository.dart';

void main() {
  final repository = AgentsRepository();

  test('Should return a list of AgentDataModel ', () async {
    final list = await repository.getAgents();
    expect(list.isNotEmpty, true);
  });
}
