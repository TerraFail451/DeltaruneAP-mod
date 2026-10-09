/// PATCH

/// REPLACE
        if (global.is_console)
        {
            scr_lerpvar("_overlay_alpha", 0, 1, 120);
        }
        else
        {
            with (_blackall)
                scr_lerpvar("image_alpha", 0, 1, 100);
        }
/// CODE
        if (global.screen_border_id != "None" && global.screen_border_id != "なし" || !window_get_fullscreen())
        {
            scr_lerpvar("_overlay_alpha", 0, 1, 120);
        }
        else
        {
            with (_blackall)
                scr_lerpvar("image_alpha", 0, 1, 100);
        }
/// END