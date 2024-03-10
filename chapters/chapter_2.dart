import '../lib/doc/fragments/document/documant.dart';
import '../lib/doc/fragments/fragment/build_context.dart';
import '../lib/doc/fragments/fragment/fragment.dart';
import '../lib/doc/fragments/layout/column.dart';
import '../lib/doc/fragments/text/caption.dart';
import '../lib/doc/fragments/text/h1.dart';
import '../lib/doc/fragments/text/source_code.dart';
import '../lib/doc/fragments/text/text.dart';

class Chapter2 extends Document {
  final String defaultParams = r'''
class SourseCode extends Text {
        final String sourceCode;
        final String language;

        SourseCode({required this.sourceCode, this.language = 'dart'})
            : super('```$language\n$sourceCode\n```');
      }
''';

  final String optionalParams = r'''
import '../fragment/build_context.dart';
import '../fragment/fragment.dart';
import 'text.dart';

class Link implements Fragment {
final String url;
final Fragment? fragment;

Link(this.url, [this.fragment]);

@override
Fragment build(BuildContext options) {
  return fragment ?? Text(url);
}

@override
String toMarkdown(MarkdownBuildContext options) {
  return '[${build(options).toMarkdown(options)}]($url)';
}

@override
String toHtml(HtmlBuildContext options) {
  return '<a href="$url">${build(options).toHtml(options)}</a>';
}
}
''';

  @override
  Fragment build(BuildContext context) {
    return Column(
      children: [
        H1('Використання параметрів за замовчуванням'),
        Text('Приклад використання параметрів за замовчуванням.'),
        Caption(
          caption:
              'Використання параметрів за замовчуванням в фрагменті SourseCode',
          child: SourseCode(sourceCode: defaultParams),
        ),
        Caption(
          caption:
              'Використання опціональних параметрів в фрагменті SourseCode',
          child: SourseCode(sourceCode: optionalParams),
        )
      ],
    );
  }
}
