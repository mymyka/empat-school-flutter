import '../fragment/build_context.dart';
import '../fragment/fragment.dart';
import 'text.dart';

class Paragraph implements Fragment {
  final String text;

  Paragraph(this.text);

  @override
  Fragment build(BuildContext options) {
    return Text(text);
  }

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '\n\n${build(options).toMarkdown(options)}\n\n';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '\n<p>${build(options).toHtml(options)}</p>\n';
  }
}
