import 'chapters/chapter_1.dart';
import 'chapters/chapter_3.dart';
import 'chapters/chapter_2.dart';
import 'lib/doc/fragments/document/documant.dart';
import 'lib/doc/fragments/fragment/build_context.dart';
import 'lib/doc/fragments/fragment/fragment.dart';
import 'lib/doc/fragments/layout/column.dart';
import 'lib/doc/fragments/utils/counter.dart';

class MyDocument extends Document {
  @override
  Fragment build(BuildContext context) {
    return Column(children: [Chapter1(), Chapter2(), Chapter3()]);
  }
}

void main() {
  final document = MyDocument();
  print(document.toMarkdown(MarkdownBuildContext(
    chapterCounter: createCounter(1),
  )));
  // print(document.toHtml(HtmlBuildContext(
  //   chapterCounter: createCounter(1),
  // )));
}
