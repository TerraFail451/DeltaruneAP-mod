/// PATCH

/// AFTER
    mus_volume(global.currentsong[1], 0, 30);
/// CODE
    mus_volume(global.AP_music[1], 0, 30);
/// END

/// REPLACE
        with (kr_actor)
        {
            scr_set_facing_sprites("kris");
            fun = 1;
            image_speed = 0.25;
            scr_move_to_point_over_time(__x, __y, walktime);
        }
/// CODE
/// END

/// BEFORE
    contimer = 0;
    con = 11;
}
/// CODE
    if (instance_exists(obj_caterpillarchara) && scr_havechar(2) && room == room_dw_church_darkmaze)
    {
        su_actor = instance_create_depth(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].depth, obj_actor);
        su_actor.__x = sus_x;
        su_actor.__y = sus_y + 8;
        su_walktime = scr_calculate_move_distance(su_actor.x, su_actor.y, su_actor.__x, su_actor.__y, 4) / 2;
        var walktime = su_walktime;
        
        with (su_actor)
        {
            sprite_index = global.cinstance[0].sprite_index;
            scr_set_facing_sprites("susie");
            scr_move_to_point_over_time(__x, __y, walktime);
        }
        
        with (global.cinstance[0])
            visible = 0;
    }

    if (instance_exists(obj_mainchara))
    {
        kr_walktime = walktime;
        obj_mainchara.x = (x - 34) + 12;
        obj_mainchara.y = y - 22;
        obj_mainchara.cutscene = 1;
        scr_pan_to_obj(obj_mainchara, walktime);
        
        with (kr_actor)
        {
            scr_set_facing_sprites("kris");
            fun = 1;
            image_speed = 0.25;
            scr_move_to_point_over_time(__x, __y, walktime);
        }
    }
    
    with (obj_caterpillarchara)
    {
        if (visible == 1 && room == room_dw_church_darkmaze)
        {
            me = scr_dark_marker_depth(x, y, 510000, sprite_index);
            visible = 0;
        }
    }
    
/// END

/// REPLACE
        with (obj_actor)
        {
            if (name == "kris")
                visible = 0;
        }
/// CODE
        with (obj_actor)
        {
            if (name == "kris" || room == room_dw_church_darkmaze)
                visible = 0;
        }
/// END