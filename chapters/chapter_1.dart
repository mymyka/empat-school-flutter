import '../lib/doc/fragments/document/documant.dart';
import '../lib/doc/fragments/fragment/build_context.dart';
import '../lib/doc/fragments/fragment/fragment.dart';
import '../lib/doc/fragments/layout/center.dart';
import '../lib/doc/fragments/layout/column.dart';
import '../lib/doc/fragments/layout/list_view.dart';
import '../lib/doc/fragments/shared/axis.dart';
import '../lib/doc/fragments/text/bold_text.dart';
import '../lib/doc/fragments/text/h1.dart';
import '../lib/doc/fragments/text/h2.dart';
import '../lib/doc/fragments/text/paragraph.dart';
import '../lib/doc/fragments/text/text.dart';

class Chapter1 extends Document {
  List<String> onePieceMovies = [
    'One Piece: The Movie (watch after episode 18)',
    'One Piece: Clockwork Island Adventure (watch after episode 53)',
    'One Piece: Chopper’s Kingdom on the Island of Strange Animals (watch after episode 102)',
  ];

  @override
  Fragment build(BuildContext context) {
    return Column(
      children: [
        H1('ListView'),
        H2('ListView builder (factory constructor)'),
        Center(child: BoldText('Column')),
        ListView.builder(
          itemCount: onePieceMovies.length,
          itemBuilder: (index) =>
              Text('${index + 1}. ${onePieceMovies[index]}'),
          separatorBuilder: (index) => Paragraph('---'),
        ),
        Center(child: BoldText('Row')),
        ListView.builder(
          axis: WritingAxis.horizontal,
          itemCount: onePieceMovies.length,
          itemBuilder: (index) =>
              Text('${index + 1}. ${onePieceMovies[index]}'),
          separatorBuilder: (index) => Text(' & '),
        ),
        H2('ListView constructor'),
        ListView(
          children: onePieceMovies.map((movie) => Paragraph(movie)).toList(),
        ),
      ],
    );
  }
}
