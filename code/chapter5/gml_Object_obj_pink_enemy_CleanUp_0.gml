/// PATCH

/// PREPEND
var song1 = obj_date_controller.song1;
var song2 = obj_date_controller.song2;
/// END

/// REPLACE
snd_stop(snd_pink_stretch_2_troubled);
snd_stop(snd_pink_stretch_2_fixed);
/// CODE
snd_stop(song1);
snd_stop(song2);
/// END