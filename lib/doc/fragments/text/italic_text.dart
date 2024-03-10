import '../fragment/build_context.dart';
import 'text.dart';

class ItalicText extends Text {
  ItalicText(String text) : super(text);

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '*${super.toMarkdown(options)}*';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '<i>${super.toHtml(options)}</i>';
  }
}
