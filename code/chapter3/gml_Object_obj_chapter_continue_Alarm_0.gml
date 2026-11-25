/// IMPORT
if (choice_index == 0)
{
    var _loading = instance_create(0, 0, obj_screen_loading);
    _loading.show_loading_screen(0, scr_chapterswitch);
    _loading.depth = -1000;
}

if (choice_index == 1)
    game_restart_true();