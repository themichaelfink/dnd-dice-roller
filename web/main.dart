import 'dart:html';
import 'dart:math';

void main() {
  final random = Random();

  final buttons = {
    'd4': 4,
    'd6': 6,
    'd8': 8,
    'd10': 10,
    'd12': 12,
    'd20': 20,
  };

  buttons.forEach((id, sides) {
    querySelector('#roll-$id')?.onClick.listen((_) {
      final roll = random.nextInt(sides) + 1;
      querySelector('#result-$id')?.text = 'Rolled: $roll';

      final historyList = querySelector('#history-$id') as UListElement;
      final rollItem = LIElement()..text = roll.toString();
      historyList.children.insert(0, rollItem);

      if (historyList.children.length > 10) {
        historyList.children.removeLast();
      }
    });
  });
}
