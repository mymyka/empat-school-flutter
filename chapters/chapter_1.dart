import '../lib/doc/fragments/document/documant.dart';
import '../lib/doc/fragments/fragment/build_context.dart';
import '../lib/doc/fragments/fragment/fragment.dart';
import '../lib/doc/fragments/layout/column.dart';
import '../lib/doc/fragments/text/h1.dart';

class Chapter1 extends Document {
  @override
  Fragment build(BuildContext context) {
    return Column(children: [
      H1('Оператори "синтаксичного цукру". Наприклад оператор "??="'),
    ]);
  }
}
