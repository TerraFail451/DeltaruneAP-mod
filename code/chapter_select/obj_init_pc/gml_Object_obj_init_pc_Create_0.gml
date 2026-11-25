/// PATCH

/// REPLACE
    _parent.trigger_event("init_complete");
    isfullscreen = window_get_fullscreen();
    var _input = instance_create(0, 0, obj_input);
    _input.init();
/// CODE
    if (!instance_exists(obj_input))
    {
        var _input = instance_create(0, 0, obj_input);
        _input.init();
    }
    
    isfullscreen = window_get_fullscreen();
    _parent.trigger_event("init_complete");
/// END
