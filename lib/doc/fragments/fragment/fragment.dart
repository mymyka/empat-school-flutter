import 'build_context.dart';

abstract class Fragment {
  Fragment build(BuildContext options);
  String toMarkdown(MarkdownBuildContext options);
  String toHtml(HtmlBuildContext options);
}
