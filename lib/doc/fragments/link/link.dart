import '../fragment/build_context.dart';
import '../fragment/fragment.dart';
import '../text/text.dart';

class Link implements Fragment {
  final String url;
  final Fragment? fragment;

  Link(this.url, [this.fragment]);

  @override
  Fragment build(BuildContext options) {
    return fragment ?? Text(url);
  }

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '[${build(options).toMarkdown(options)}]($url)';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '<a href="$url">${build(options).toHtml(options)}</a>';
  }
}
