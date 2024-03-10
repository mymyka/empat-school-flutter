import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Column with DefaultBuild implements Fragment {
  final List<Fragment> children;

  Column({required this.children});

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return children.map((child) => child.toMarkdown(context)).join('\n\n');
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return children.map((child) => child.toHtml(context)).join('<br>\n\n');
  }
}
