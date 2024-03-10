class BuildContext {
  Function chapterCounter;

  BuildContext({required this.chapterCounter});
}

class MarkdownBuildContext extends BuildContext {
  MarkdownBuildContext({required chapterCounter})
      : super(chapterCounter: chapterCounter);
}

class HtmlBuildContext extends BuildContext {
  HtmlBuildContext({required chapterCounter})
      : super(chapterCounter: chapterCounter);
}
