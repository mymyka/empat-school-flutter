import '../fragment/build_context.dart';
import 'text.dart';

class H1 extends Text {
  H1(String text) : super(text);

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return '# Chapter #${context.chapterCounter()}: ${super.toMarkdown(context)}';
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return '<h1>${super.toHtml(context)}</h1>';
  }
}
