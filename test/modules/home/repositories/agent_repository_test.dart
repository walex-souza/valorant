import 'package:flutter_test/flutter_test.dart';
import 'package:valorant/modules/home/repositories/agent_repository.dart';

void main() {
  final repository = AgentRepository();
  test('Should return a list of AgentModel', () async {
    final list = await repository.getAgents();
    expect(list.isNotEmpty, true);
  });
}
