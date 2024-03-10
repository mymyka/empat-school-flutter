// Робота з різними типами колекцій.

import '../lib/doc/fragments/document/documant.dart';
import '../lib/doc/fragments/fragment/build_context.dart';
import '../lib/doc/fragments/fragment/fragment.dart';
import '../lib/doc/fragments/layout/center.dart';
import '../lib/doc/fragments/layout/column.dart';
import '../lib/doc/fragments/table/table.dart';
import '../lib/doc/fragments/text/caption.dart';
import '../lib/doc/fragments/text/h1.dart';
import '../lib/doc/fragments/text/text.dart';

class Chapter3 extends Document {
  final List<List<String>> list = [
    ['Pokemon', 'Type'],
    ['Pikachu', 'Electric'],
    ['Charmander', 'Fire'],
  ];

  final Set<Set<String>> set = {
    {'Pokemon', 'Type'},
    {'Squirtle', 'Water'},
    {'Bulbasaur', 'Grass'},
  };

  final Map<String, String> map = {
    'Pokemon': 'Type',
    'Mewtwo': 'Psychic',
    'Mew': 'Psychic',
  };

  @override
  Fragment build(BuildContext context) {
    List<List<String>> all = [list.first];
    all.addAll(list.skip(1));
    all.addAll(set.skip(1).map((e) => e.toList()));
    all.addAll(map.entries.skip(1).map((e) => [e.key, e.value]));

    return Column(children: [
      H1('Робота з різними типами колекцій.'),
      Text('Створимо таблиці з кожним з типів List, Set, Map.'),
      Center(
          child: Column(children: [
        Caption(caption: 'Table from List', child: Table(list)),
        Caption(caption: 'Table from Set', child: Table(set)),
        Caption(caption: 'Table from Map', child: Table.fromMap(map)),
        Caption(caption: 'All', child: Table(all)),
      ])),
    ]);
  }
}
