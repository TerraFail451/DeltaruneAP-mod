/// PATCH

/// REPLACE
choice_text[0] = (global.lang == "en") ? stringsetsub("Continue to Chapter ~1", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
choice_text[1] = (global.lang == "en") ? stringsetsub("Keep Playing Chapter ~1", chapter) : stringsetsub("このままChapter ~1をプレイ", chapter);
/// CODE
choice_text[0] = (global.lang == "en") ? stringset("Return to Chapter Select") : stringsetsub("Chapter ~1へ進む", next_chapter);
choice_text[1] = (global.lang == "en") ? stringset("Keep Playing Chapter 4") : stringsetsub("このままChapter ~1をプレイ", chapter);
/// END