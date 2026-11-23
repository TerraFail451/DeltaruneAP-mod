/// PATCH

/// AFTER
    var done_playing = track_progress_normal >= 1;
/// CODE
    if (global.AP_ost_shuffle)
    {
        if (track_progress >= 36.5 && fadeout == 0)
        {
            fadeout = 1;
            mus_fade(piano_song[3], 150);
        }
    }
/// END