/// PATCH

/// REPLACE
            global.entrance = 24;
/// CODE
            if (nextroom == 53)
                global.entrance = 18;
            else
                global.entrance = 24;
/// END

/// REPLACE
            scr_become_light();
/// CODE
            if (global.plot < 200)
                scr_become_light();
            
            if (global.plot >= 200 && global.flag[24] != 1)
            {
                if (nextroom == 53)
                    scr_flag_set(1311, 0);
                else
                    scr_flag_set(1311, 1);
            }
/// END

