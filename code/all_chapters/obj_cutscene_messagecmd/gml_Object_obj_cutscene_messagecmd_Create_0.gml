/// IMPORT .ignore if !CHAPTER_2 && !CHAPTER_3
instant = 0;
command_num[0] = 0;
command[0] = 0;
command_arg1[0] = 0;
command_arg2[0] = 0;
command_arg3[0] = 0;
command_arg4[0] = 0;
command_arg5[0] = 0;
command_arg6[0] = 0;
i = 0;
count = 0;
_c = "none";
command_actor[0] = 43894389;
master_object = 4839438;
alarm[0] = 1;
msg_active = false;

if (i_ex(obj_cutscene_master))
    depth = obj_cutscene_master.depth - 5;
