/// PATCH

#if CHAPTER_2
/// REPLACE
    if (ossafe_file_exists("dr.ini"))
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#elsif !CHAPTER_1
/// REPLACE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists("dr.ini"))
/// CODE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#endif

#if CHAPTER_2
/// REPLACE
    if (global.is_console)
    {
        if (global.game_won == 1)
            menu_go = 2;
    }
/// CODE
    if (global.game_won == 1)
        menu_go = 2;
/// END

#if !CHAPTER_1
/// REPLACE
    if (menu_go == 0 || menu_go == 1)
    {
        if (global.is_console)
            global.screen_border_alpha = 0;
        
#if CHAPTER_2
        roomchoice = room_intro_ch2;
#if CHAPTER_3
        roomchoice = room_intro;
#if CHAPTER_4
        roomchoice = room_intro_ch4;
#if CHAPTER_5
        roomchoice = room_intro_ch5;
#endif
    }
    
    if (menu_go == 2)
    {
        if (global.is_console)
            global.screen_border_alpha = 1;
        
        scr_windowcaption("DELTARUNE");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    
    if (menu_go == 3)
    {
        if (global.is_console)
            global.screen_border_alpha = 0;
        
#if CHAPTER_2 || CHAPTER_3
        roomchoice = room_next(room);
#else
        roomchoice = room_title_placeholder;
#endif
    }
/// CODE
    if (menu_go == 0 || menu_go == 1)
    {
        global.screen_border_alpha = 0;
#if CHAPTER_2
        roomchoice = room_intro_ch2;
#if CHAPTER_3
        roomchoice = room_intro;
#if CHAPTER_4
        roomchoice = room_intro_ch4;
#if CHAPTER_5
        roomchoice = room_intro_ch5;
#endif
    }
    
    if (menu_go == 2)
    {
        global.screen_border_alpha = 1;
        scr_windowcaption("DELTARUNE");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    
    if (menu_go == 3)
    {
        global.screen_border_alpha = 0;
#if CHAPTER_2 || CHAPTER_3
        roomchoice = room_next(room);
#else
        roomchoice = room_title_placeholder;
#endif
    }
/// END
#endif