import '../fragment/build_context.dart';
import 'text.dart';

class SourseCode extends Text {
  final String language;

  SourseCode({required String sourceCode, this.language = 'dart'})
      : super(sourceCode);

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return '```$language\n${super.toMarkdown(context)}\n```';
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return '<pre><code class="language-$language">${super.toHtml(context)}</code></pre>';
  }
}
