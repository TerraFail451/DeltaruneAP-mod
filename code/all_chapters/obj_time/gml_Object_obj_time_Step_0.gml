/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

/// REPLACE
if (global.is_console)
{
    if (!i_ex(obj_border_controller))
    {
        var border_controller = instance_create(0, 0, obj_border_controller);
        border_controller.init_border();
    }
}
/// CODE
if (global.is_console)
{
    if (!i_ex(obj_border_controller))
    {
        var border_controller = instance_create(0, 0, obj_border_controller);
        border_controller.init_border();
    }
}
/// END