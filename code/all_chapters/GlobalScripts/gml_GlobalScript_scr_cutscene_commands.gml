/// PATCH .ignore if CHAPTER_1

/// REPLACE
        if (command_arg1[i] == "init")
            global.currentsong[0] = snd_init(command_arg2[i]);
        
        if (command_arg1[i] == "initplay")
            mus_initplay(command_arg2[i]);
        
        if (command_arg1[i] == "initloop")
            mus_initloop(command_arg2[i]);
/// CODE
        if (command_arg1[i] == "init")
            global.currentsong[0] = snd_init(command_arg2[i], !command_arg3[i]);
        
        if (command_arg1[i] == "initplay")
            mus_initplay(command_arg2[i], !command_arg3[i]);
        
        if (command_arg1[i] == "initloop")
            mus_initloop(command_arg2[i], !command_arg3[i]);
/// END

#if CHAPTER_2 || CHAPTER_3
/// AFTER
    if (_c == "terminatekillactors")
    {
        kill_actors = 1;
        terminate_this_frame = 1;
        breakme = 1;
    }
/// CODE
    if (_c == "customfunc")
    {
        if (object_index == obj_cutscene_delaycmd || object_index == obj_cutscene_messagecmd)
        {
            if (command_arg1[i] != -1)
                command_arg2[i](command_arg1[i]);
            else
                command_arg2[i]();
        }
        else if (array_length(customfuncs) > 0)
        {
            if (command_arg1[i] != -1)
                customfuncs[0](command_arg1[i]);
            else
                customfuncs[0]();
            
            array_delete(customfuncs, 0, 1);
        }
    }
/// END
#endif