// Використання лямбда-функцій
// Фабричний конструктор
// Конструктор ініціалізації dart
// Робота з різними типами колекцій.

import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Table with DefaultBuild implements Fragment {
  Iterable<Iterable<dynamic>> data;

  Table(this.data);

  Table.fromMap(Map<dynamic, dynamic> data)
      : this(data.entries.map((e) => [e.key, e.value]).toList());

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return data.first.join(' | ') +
        '\n' +
        data.first.map((_) => '---').join(' | ') +
        '\n' +
        data.skip(1).map((row) => row.join(' | ')).join('\n');
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return '<table style=\'border: 1px solid;\'>\n' +
        '<tr style=\'border: 1px solid;\'>' +
        data.first
            .map((cell) => '<th style=\'border: 1px solid;\'>$cell</th>')
            .join('\n') +
        '</tr>' +
        '\n' +
        data
            .skip(1)
            .map((row) =>
                '<tr style=\'border: 1px solid;\'>' +
                row
                    .map(
                        (cell) => '<td style=\'border: 1px solid;\'>$cell</td>')
                    .join('') +
                '</tr>')
            .join('\n') +
        '\n</table>';
  }
}
