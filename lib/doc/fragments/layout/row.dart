import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Row with DefaultBuild implements Fragment {
  final List<Fragment> children;

  Row({required this.children});

  @override
  String toMarkdown(MarkdownBuildContext context) {
    return '\n' +
        ' | ' +
        children.map((child) => ' ').join(' | ') +
        ' | \n' +
        ' | ' +
        children.map((child) => '---').join(' | ') +
        ' | \n' +
        ' | ' +
        children
            .map((child) => child
                .toMarkdown(context)
                .replaceAll('\n\n', "<br>")
                .replaceAll('\n', "<br>"))
            .join(' | ');
  }

  @override
  String toHtml(HtmlBuildContext context) {
    return "<div class=\"row\" style=\"display: flex;\"> \n" +
        children
            .map((child) =>
                "<div class=\"column\" style=\"flex: ${100 ~/ children.length}%;\">" +
                child.toHtml(context) +
                "</div>")
            .join('\n') +
        "\n</div>";
  }
}
