import '../fragment/build_context.dart';
import 'text.dart';

class BoldText extends Text {
  BoldText(String text) : super(text);

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '**${super.toMarkdown(options)}**';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '<b>${super.toHtml(options)}</b>';
  }
}
