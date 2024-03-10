import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';
import '../layout/center.dart';
import '../layout/column.dart';
import 'text.dart';

class Caption with DefaultFormatBuild implements Fragment {
  final String caption;
  final Fragment child;

  Caption({required this.caption, required this.child});

  @override
  Fragment build(BuildContext context) {
    return Column(children: [
      child,
      Center(child: Text(caption)),
    ]);
  }
}
