import '../fragment/build_context.dart';
import '../fragment/default.dart';
import '../fragment/fragment.dart';
import '../shared/axis.dart';
import 'column.dart';
import 'row.dart';

class ListView with DefaultFormatBuild implements Fragment {
  final List<Fragment> children;
  final WritingAxis axis;

  ListView({required this.children, this.axis = WritingAxis.vertical});

  factory ListView.builder({
    required int itemCount,
    required Fragment Function(int index) itemBuilder,
    required Fragment Function(int index) separatorBuilder,
    WritingAxis axis = WritingAxis.vertical,
  }) {
    return ListView(
      axis: axis,
      children: List.generate(
        itemCount * 2 - 1,
        (index) => index.isEven
            ? itemBuilder(index ~/ 2)
            : separatorBuilder(index ~/ 2),
      ),
    );
  }

  @override
  Fragment build(BuildContext context) {
    return (axis == WritingAxis.vertical)
        ? Column(children: children.map((c) => c.build(context)).toList())
        : Row(children: children.map((c) => c.build(context)).toList());
  }
}
