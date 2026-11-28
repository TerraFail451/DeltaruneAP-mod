/// PATCH

/// REPLACE
        if (visible == 1)
/// CODE
        if (visible == 1 && global.plot < 200)
/// END

/// AFTER
        kr_actor.__y = kris_y + 20;
/// CODE
        obj_mainchara.x = (x - 34) + 10;
        obj_mainchara.y = y + 12;
        scr_pan_to_obj(obj_mainchara, 30);
        obj_mainchara.cutscene = 1;
/// END