// Note: Оператори "синтаксичного цукру". Наприклад оператор "??="
// Використання ключового слова assert

import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';

class Image with DefaultBuild implements Fragment {
  final String url;
  String? alt;

  Image(this.url, [this.alt]) : assert(url.isNotEmpty, 'url cannot be empty') {
    this.alt ??= 'image';
  }

  @override
  String toMarkdown(MarkdownBuildContext options) {
    return '![${alt}]($url)';
  }

  @override
  String toHtml(HtmlBuildContext options) {
    return '<img src="$url" alt="${alt}">';
  }
}
