/// PATCH

/// REPLACE
        var _border_image = global.darkzone ? border_dark : border_light;
        
        if (room_id == room_legend || room_id == 321 || room_id == PLACE_MENU || room_id == PLACE_LOGO)
            _border_image = border_dark;
/// CODE
        var _border_image = global.darkzone ? border_dw_castletown : border_lw_town;
        
        if (room_id == room_legend || room_id == 321 || room_id == PLACE_MENU || room_id == PLACE_LOGO)
            _border_image = border_dw_castletown;
/// END

/// REPLACE
            _border_image = border_dark;
/// CODE
            _border_image = border_dw_castletown;
/// END

/// REPLACE
        scr_draw_background_ps4(bg_border_line_1080, 0, 0);
/// CODE
        scr_draw_background_ps4(border_line_1080, 0, 0);
/// END