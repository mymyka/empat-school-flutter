import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Text with DefaultBuild implements Fragment {
  final String text;

  Text(this.text);

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return text;
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return text;
  }
}
