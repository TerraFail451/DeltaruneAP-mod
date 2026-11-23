/// IMPORT .ignore if !CHAPTER_2 && !CHAPTER_3
i = 0;

if (i_ex(command_actor[0]) || _c == "customfunc")
    scr_cutscene_commands();

instance_destroy();
