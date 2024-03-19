# Chapter #1: ListView

## ListView builder (factory constructor)

<center>

**Column**

</center>

1. One Piece: The Movie (watch after episode 18)

---

2. One Piece: Clockwork Island Adventure (watch after episode 53)

---

3. One Piece: Chopper’s Kingdom on the Island of Strange Animals (watch after episode 102)

<center>

**Row**

</center>


 |   |   |   |   |   | 
 | --- | --- | --- | --- | --- | 
 | 1. One Piece: The Movie (watch after episode 18) |  &  | 2. One Piece: Clockwork Island Adventure (watch after episode 53) |  &  | 3. One Piece: Chopper’s Kingdom on the Island of Strange Animals (watch after episode 102)

## ListView constructor

One Piece: The Movie (watch after episode 18)

One Piece: Clockwork Island Adventure (watch after episode 53)

One Piece: Chopper’s Kingdom on the Island of Strange Animals (watch after episode 102)

# Chapter #2: Використання параметрів за замовчуванням

Приклад використання параметрів за замовчуванням.

```dart
class SourseCode extends Text {
        final String sourceCode;
        final String language;

        SourseCode({required this.sourceCode, this.language = 'dart'})
            : super('```$language\n$sourceCode\n```');
      }

```

<center>

Використання параметрів за замовчуванням в фрагменті SourseCode

</center>

```dart
import '../fragment/build_context.dart';
import '../fragment/fragment.dart';
import 'text.dart';

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

```

<center>

Використання опціональних параметрів в фрагменті SourseCode

</center>

# Chapter #3: Робота з різними типами колекцій.

Створимо таблиці з кожним з типів List, Set, Map.

<center>

Pokemon | Type
--- | ---
Pikachu | Electric
Charmander | Fire

<center>

Table from List

</center>

Pokemon | Type
--- | ---
Squirtle | Water
Bulbasaur | Grass

<center>

Table from Set

</center>

Pokemon | Type
--- | ---
Mewtwo | Psychic
Mew | Psychic

<center>

Table from Map

</center>

Pokemon | Type
--- | ---
Pikachu | Electric
Charmander | Fire
Squirtle | Water
Bulbasaur | Grass
Mewtwo | Psychic
Mew | Psychic

<center>

All

</center>

</center>
