import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Center with DefaultBuild implements Fragment {
  final Fragment child;

  Center({required this.child});

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return '<center>\n\n${child.toMarkdown(context)}\n\n</center>';
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return '<div style="text-align: center;">${child.toHtml(context)}</div>';
  }
}
