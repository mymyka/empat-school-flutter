import '../fragment/build_context.dart';
import 'text.dart';

class H2 extends Text {
  H2(String text) : super(text);

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '## ${super.toMarkdown(options)}';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '<h2>${super.toHtml(options)}</h2>';
  }
}
