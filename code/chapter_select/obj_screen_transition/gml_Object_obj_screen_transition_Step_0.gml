/// PATCH

/// REPLACE
    if (global.is_console)
    {
        var _loading = instance_create(0, 0, obj_screen_loading);
        _loading.show_loading_screen(_target_chapter, _callback);
        _loading.depth = -1000;
    }
    else
    {
        _callback(_target_chapter);
    }
/// CODE
    var _loading = instance_create(0, 0, obj_screen_loading);
    _loading.show_loading_screen(_target_chapter, _callback);
    _loading.depth = -1000;
/// END