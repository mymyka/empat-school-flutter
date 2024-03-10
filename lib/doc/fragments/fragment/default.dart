// Використання міксинів

import 'build_context.dart';
import 'fragment.dart';

mixin DefaultBuild implements Fragment {
  @override
  Fragment build(BuildContext options) {
    return this;
  }
}

mixin DefaultFormatBuild implements Fragment {
  @override
  String toMarkdown(MarkdownBuildContext context) {
    return this.build(context).toMarkdown(context);
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return this.build(context).toHtml(context);
  }
}
