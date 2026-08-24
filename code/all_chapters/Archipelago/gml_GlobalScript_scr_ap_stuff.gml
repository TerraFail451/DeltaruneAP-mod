/// FUNCTIONS

function AP_handle_balancing(amount, expected_chapter)
{
    if (!global.AP_balancing || amount <= 0) return amount;

    var chapter_diff = max(expected_chapter - global.chapter, 0);

    var factor = min((1 / (chapter_diff + 1)) * 1.5, 1);

    return max(round(amount * factor), 1);
}

function AP_get_recruits()
{
    if (global.AP_current_route  == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS)
    {
        if (global.chapter >= 2)
        {
            global.flag[605] = 1;
            global.flag[606] = 1;
            global.flag[611] = 1;
            global.flag[613] = 1;
            global.flag[614] = 1;
            global.flag[615] = 1;
            global.flag[622] = 1;
            global.flag[623] = 1;
        }
        
        if (global.chapter >= 3)
        {
            global.flag[630] = 1;
            global.flag[631] = 1;
            global.flag[632] = 1;
            global.flag[643] = 1;
            global.flag[634] = 1;
            global.flag[635] = 1;
            global.flag[636] = 1;
            global.flag[640] = 1;
            global.flag[642] = 1;
            global.flag[644] = 1;
        }
        
        if (global.chapter >= 4)
        {
            global.flag[654] = 1;
            global.flag[655] = 1;
            global.flag[656] = 1;
            global.flag[657] = 1;
            global.flag[658] = 1;
            global.flag[659] = 1;
        }
        
        if (global.chapter >= 5)
        {
            global.flag[662] = 1;
            global.flag[663] = 1;
            global.flag[664] = 1;
            global.flag[665] = 1;
            global.flag[666] = 1;
            global.flag[667] = 1;
            global.flag[668] = 1;
            global.flag[669] = 1;
        }
    }
    else if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
    {
        if (global.chapter >= 2)
        {
            global.flag[605] = 1;
            global.flag[606] = 1;
            global.flag[611] = 1;
            global.flag[613] = 1;
            global.flag[614] = 1;
            global.flag[615] = 1;
            global.flag[622] = 1;
            global.flag[623] = 1;
        }
        
        if (global.chapter >= 3)
        {
            global.flag[630] = -1;
            global.flag[631] = -1;
            global.flag[632] = -1;
            global.flag[633] = -1;
            global.flag[634] = -1;
            global.flag[635] = -1;
            global.flag[636] = 0;
            global.flag[640] = 0;
            global.flag[642] = 0;
            global.flag[644] = 0;
        }
        
        if (global.chapter >= 4)
        {
            global.flag[654] = 1;
            global.flag[655] = 0;
            global.flag[656] = 1;
            global.flag[657] = 0;
            global.flag[658] = 0;
            global.flag[659] = 1;
        }
        
        if (global.chapter >= 5)
        {
            global.flag[662] = 0;
            global.flag[663] = 0;
            global.flag[664] = 0;
            global.flag[665] = 0;
            global.flag[666] = 0;
            global.flag[667] = 0;
            global.flag[668] = 0;
            global.flag[669] = 0;
        }
    }
}

function AP_handle_mike_minigame_trophy(minigame, highscore)
{
    var location_to_send = [];
    var minigame_base_id = 0;
    var trophy = 0;
    switch(minigame)
    {
        case 1:
            minigame_base_id = 232;
            if (highscore >= 1000)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 4000)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 8000)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 16000)
                array_push(location_to_send, minigame_base_id + 3)
            break;
        case 2:
            minigame_base_id = 236;
            if (highscore >= 500)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 1200)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 2000)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 3000)
                array_push(location_to_send, minigame_base_id + 3)
            break;
        case 3:
            minigame_base_id = 240;
            if (highscore >= 100)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 300)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 500)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 700)
                array_push(location_to_send, minigame_base_id + 3)
            break;
    }

    AP_sendLocation(location_to_send);

}

function AP_fill_progressive_weapon_struct()
{
    global.AP_progressive_weapons_ids = {}

    if (global.AP_progressive_weapons.kris)
    {
        global.AP_progressive_weapons_ids.kris = [];
        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.kris, 5); // SpookySword

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.kris, 14); // BounceBlade

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.kris, 16); // MechaSaber

        if (global.AP_include_chapters[0] && global.AP_include_unused_items >= 1)
            array_push(global.AP_progressive_weapons_ids.kris, 8); // Trefoil

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.kris, 23); // Saber10
        
        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.kris, 50); // JingleBlade

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.kris, 53); // Winglade

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.kris, 30); // WoodBlade2

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.kris, 33); // AquaKnife

        if (global.AP_include_chapters[1] && global.AP_include_unused_items >= 1 && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.kris, 11); // TwistedSwd

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.kris, 26); // Blackshard
        
        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.kris, 4); // EverybodyWeapon
    }
    if (global.AP_progressive_weapons.susie)
    {
        global.AP_progressive_weapons_ids.susie = [];
        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.susie, 6); // Brave Ax

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.susie, 17); // AutoAxe

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.susie, 24); // ToxicAxe

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.susie, 7); // Devilsknife

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.susie, 54); // AbsorbAx

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.susie, 31); // Thatchet

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.susie, 52); // JusticeAxe

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.susie, 4); // EverybodyWeapon
        
    }
    if (global.AP_progressive_weapons.ralsei)
    {
        global.AP_progressive_weapons_ids.ralsei = [];

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.ralsei, 10); // DaintyScarf

        if (global.AP_include_chapters[1] && global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.ralsei, 15); // Cheerscarf

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.ralsei, 9); // Ragger

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 18); // FiberScarf

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.ralsei, 25); // FlexScarf

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.ralsei, 51); // ScarfMark

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 19); // Ragger2

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 37); // MistleWP

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 32); // BlueShoes

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 21); // PuppetScarf

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 35); // BrokenScarf

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.ralsei, 4); // EverybodyWeapon
    }
    if (global.AP_progressive_weapons.noelle)
    {
        global.AP_progressive_weapons_ids.noelle = [];

        if (global.AP_include_chapters[1] && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.noelle, 22); // FreezeRing

        if (global.AP_include_unused_items == 1 && global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.noelle, 36); // GildedRose

        if (global.AP_include_chapters[1] && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.noelle, 13); // Thornring

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.noelle, 4); // EverybodyWeapon
    }
}

function AP_update_current_room(room_name)
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
    }
    
    if(obj_archipelago_client.AP_isDisconnected())
        exit;

    current_location = { current_room: room_name }

    obj_archipelago_client.AP_setDataStorage("current_location", current_location, "update")
}

function AP_complete_chapter(chapter_number)
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
    }
    
    if(obj_archipelago_client.AP_isDisconnected())
        obj_archipelago_client.AP_connect();

    switch (chapter_number)
    {
        case 0:
            break;
        case 1:
            AP_sendLocation(185);
            break;
        case 2:
            if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
                AP_sendLocation(351);
            else
                AP_sendLocation(186);
            break;
        case 3:
            AP_sendLocation(187);
            break;
        case 4:
            AP_sendLocation(225);
            break;
        case 5:
            if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
                AP_sendLocation(350);
            else
                AP_sendLocation(345);
            break;
        default:
            break;
    }
    
    obj_archipelago_client.AP_completeChapter(chapter_number);
}

function AP_sendLocation(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendLocation(location_id);
}

function AP_sendHint(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendHint(location_id);
}

function AP_create()
{
    canshowtext = 1;
    showingitem = 0;
    index = 0;
    wait = 0;
}

function AP_get_location_reward_text(location_id)
{
    if (!variable_global_exists("AP_location_item")) return "Unknown Item";
    if !variable_struct_exists(global.AP_location_item, location_id) return "Unknown Item";

    var data = variable_struct_get(global.AP_location_item, location_id);

    if (data.playerName == "Yourself" || data.playerName == "<yourself>")
        var text = string("your {0}", data.itemName);
    else
        var text = string("{0}'s {1}", data.playerName, data.itemName);
    return AP_item_classification_color_text(text, data.flags);
}

function AP_get_location_reward_data(location_id)
{
     if (!variable_global_exists("AP_location_item")) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    if !variable_struct_exists(global.AP_location_item, location_id) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    var data = variable_struct_get(global.AP_location_item, location_id)
    if data.playerName == "<yourself>" data.playerName = "Yourself"
    return variable_struct_get(global.AP_location_item, location_id)
}

function AP_item_classification_color_text(text, flags)
{
    switch (flags)
    {
        case 0: 
            return string("\\cf{0}\\c0^2", text);
        case 1: 
            return string("\\cv{0}\\c0^2", text);
        case 2:
            return string("\\cu{0}\\c0^2", text);
        case 3:
            return string("\\cg{0}\\c0^2", text);
        case 4:
            return string("\\ct{0}\\c0^2", text);
        default : 
            return string("\\c0{0}\\c0^2", text);
    }
}

function AP_item_classification_color_shop(flags){
    return draw_set_color(AP_item_flag_to_color(flags))
}

function AP_item_flag_to_color(flags){
    switch (flags)
    {
        case 0:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.filler))
        case 1:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.progression))
        case 2:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.useful))
        case 3:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.useful_progression))
        case 4:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.trap))
        default:
            return c_white
    }
}

function AP_handle_DeathLink()
{   
    if (global.darkzone == 0)
        exit;

    global.AP_deathlink_protected = true;
    if (global.chapter == 3 && (room == room_board_1 || room == room_board_2 || room == room_board_3))
    {
        if (i_ex(obj_battlecontroller))
        {
            snd_play(snd_hurt1);
            global.hp[1] = 0;
            global.hp[2] = 0;
            global.hp[3] = 0;
            
            with (obj_battlecontroller)
            {
                with (obj_heroparent)
                    sprite_index = defeatsprite;
                
                global.specialbattle = 3;
                boardend = 1;
                alarm[11] = 1;
                
                with (obj_dmgwriter)
                    instance_destroy();
            }
        }
        else
        {
            timer = 0;
        }
    }
    else
    {
        scr_gameover();
    }
    global.AP_deathlink_protected = false;
}

function AP_step()
{
    if (global.darkzone == 1 || global.AP_skip_item_textboxes)
    {
        if (canshowtext)
        {
            if (wait == 1 && obj_archipelago_client.AP_isAuthenticated() && instance_exists(obj_dialoguer) == 0)
            {
                wait = 0;
                global.interact = 0;
            }
            else if (wait == 1 && !obj_archipelago_client.AP_isAuthenticated() && instance_exists(obj_dialoguer) == 0)
            {

                if (!instance_exists(obj_archipelago_client))
                {
                    instance_create(0, 0, obj_archipelago_client);
                }

                if(obj_archipelago_client.AP_isDisconnected())
                {
                    obj_archipelago_client.AP_connect();
                    script_execute(scr_writetext, 0, string("\\s0* (Connection failed ({0}). We are gonna try to reconnect after this textbox...)/%", global.AP_connection_errors == undefined ? "unknown" : string(global.AP_connection_errors)), 0, 6);
                }
                else
                {
                    script_execute(scr_writetext, 0, string("\\s0* (You are still connecting, please wait...)/%", 0, 6));
                }

                wait = 1;
                global.interact = 1;
            }
            
            if (AP_can_receive_item())
            {
                if (!obj_archipelago_client.AP_isAuthenticated())
                {
                    script_execute(scr_writetext, 0, "\\s0* (You get the sinking feeling that you have disconnected from the Multiworld.)/%", 0, 6);
                    
                    if (!instance_exists(obj_archipelago_client))
                    {
                        instance_create(0, 0, obj_archipelago_client);
                    }
                    
                    if(obj_archipelago_client.AP_isDisconnected())
                        obj_archipelago_client.AP_connect();
                        
                    wait = 1;
                    global.interact = 1;
                }

                if (!variable_global_exists("AP_items_waiting_to_receive") || global.AP_items_waiting_to_receive == undefined)
                {
                    AP_sync_item_from_server();
                    index = 0;
                }
                
                if (index >= array_length(global.AP_items_waiting_to_receive))
                {
                    global.AP_items_waiting_to_receive = undefined;
                    if (global.AP_skip_item_textboxes)
                    {
                        global.AP_skip_item_textboxes = false;
                        scr_tempsave();
                    }
                }
                
                if (variable_global_exists("AP_items_waiting_to_receive") && global.AP_items_waiting_to_receive != undefined && array_length(global.AP_items_waiting_to_receive) > 0)
                {
                    if (global.AP_skip_item_textboxes)
                    {
                        while(index < array_length(global.AP_items_waiting_to_receive))
                        {
                            var item_id = global.AP_items_waiting_to_receive[index];
                            AP_handle_receive_item(item_id);
                            array_push(global.AP_item_got_in_current_chapter, item_id);
                            index++;
                        }
                    }
                    else
                    {
                        var item_id = global.AP_items_waiting_to_receive[index];
                            AP_handle_receive_item(item_id);
                            array_push(global.AP_item_got_in_current_chapter, item_id);
                            index++;
                    }
                }

            }
        }
        else
        {
            canshowtext = 1;
        }
        
        if (showingitem && !instance_exists(obj_dialoguer) && !cutscene)
        {
            if (!global.AP_skip_item_textboxes)
                global.interact = 0;
            showingitem = 0;
        }
    }
}

function AP_load()
{
    global.AP_item_got_in_current_chapter = [];
    global.customflags = [];

    var array_size = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (chapter = 1; chapter <= array_size; chapter++)
    {
        global.AP_item_got_in_current_chapter[chapter - 1] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }

    for (i = 0; i < 9999; i += 1)
    {
        global.customflags[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.MacGuffin_count = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.kris_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.susie_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.ralsei_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.noelle_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
}

function AP_save()
{
    file_text_writeln(myfileid);

    if array_length(global.AP_item_got_in_current_chapter) == undefined
        global.AP_item_got_in_current_chapter = [];

    file_text_write_real(myfileid, array_length(global.AP_item_got_in_current_chapter));

    for (i = 0; i < array_length(global.AP_item_got_in_current_chapter); i++)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.AP_item_got_in_current_chapter[i]);
    }
    
    for (i = 0; i < array_length(global.customflags); i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.customflags[i]);
    }
    
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.MacGuffin_count);

    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.AP_progressive_current_index.kris_weapon);

    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.AP_progressive_current_index.susie_weapon);

    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.AP_progressive_current_index.ralsei_weapon);

    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.AP_progressive_current_index.noelle_weapon);
}

function AP_game_start()
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
        if(obj_archipelago_client.AP_isDisconnected())
            obj_archipelago_client.AP_connect();
    }

    global.AP_item_got_in_current_chapter = [];
    global.customflags = [];
    global.AP_items_waiting_to_receive = undefined;
    global.MacGuffin_count = 0;
    global.AP_progressive_current_index = {
        kris_weapon: 0,
        susie_weapon: 0,
        ralsei_weapon: 0,
        noelle_weapon: 0,
    }

    for (var i = 0; i < 9999; i++)
        global.customflags[i] = 0;
}

function AP_game_start_post_connexion()
{
    // Prevent to execute if reconnected during the game
    if (global.AP_game_start_post_connexion_done) return;

    AP_fill_progressive_weapon_struct();
    AP_handle_music();

    if (global.AP_unlock_fun_gang_actions)
        global.flag[34] = true;
    
    if (global.AP_have_starwalker)
        global.flag[254] = 1;
    
    global.AP_game_start_post_connexion_done = true;
    if (global.AP_remove_starting_equipment)
    {
        global.charweapon[1] = 1;
        global.charweapon[2] = 2;
        global.charweapon[3] = 3;
        global.charweapon[4] = 12;
    }
    else
    {
        switch(global.chapter){
            case 1:
                global.charweapon[1] = 1;
                global.charweapon[2] = 2;
                global.charweapon[3] = 3;
                break;
            case 2:
                global.charweapon[1] = 1;
                global.chararmor1[1] = 1;
                global.chararmor2[1] = 1;

                global.charweapon[2] = 2;
                global.chararmor1[2] = 1;
                global.chararmor2[2] = 1;

                global.charweapon[3] = 3;
                global.chararmor1[3] = 1;
                global.chararmor2[3] = 4;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 3:
                global.charweapon[1] = 16;
                global.chararmor1[1] = 1;
                global.chararmor2[1] = 10;
                
                global.charweapon[2] = 17;
                global.chararmor1[2] = 1;
                global.chararmor2[2] = 10;

                global.charweapon[3] = 18;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 10;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 4:
                global.charweapon[1] = 23;
                global.chararmor1[1] = 25;
                global.chararmor2[1] = 10;

                global.charweapon[2] = 24;
                global.chararmor1[2] = 25;
                global.chararmor2[2] = 10;

                global.charweapon[3] = 25;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 10;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 5:
                global.charweapon[1] = 53;
                global.chararmor1[1] = 25;
                global.chararmor2[1] = 25;

                global.charweapon[2] = 24;
                global.chararmor1[2] = 25;
                global.chararmor2[2] = 25;

                global.charweapon[3] = 25;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 25;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
        }
    }

    if(global.AP_unlock_kris)
        global.maxhp[1] = -666
    else
        global.maxhp[1] = AP_internal_get_character_max_hp(1);


    if (global.AP_unlock_characters)
    {
        global.maxhp[2] = -666;
        global.maxhp[3] = -666;
        global.maxhp[4] = -666;
    }
    else
    {
        global.maxhp[2] = AP_internal_get_character_max_hp(2);
        global.maxhp[3] = AP_internal_get_character_max_hp(3);
        global.maxhp[4] = AP_internal_get_character_max_hp(4);
    }

    global.hp[1] = global.maxhp[1];
    global.hp[2] = global.maxhp[2];
    global.hp[3] = global.maxhp[3];
    global.hp[4] = global.maxhp[4];
}

function AP_can_receive_item()
{

    var chapterSpecificLogic;

    switch(global.chapter)
    {
        case 2:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master);
            break;
        case 3:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master) && !instance_exists(obj_board_controller);
            break;
        case 4:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master);
            break;
        case 5:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master) && !instance_exists(obj_plat_player)
            break;
        default:
            chapterSpecificLogic = true;
    }

    return global.AP_skip_item_textboxes ||
    (
            global.interact == 0
            && global.darkzone == 1
            && !instance_exists(obj_fadein)
            && !instance_exists(obj_fadeout)
            && !instance_exists(obj_persistentfadein)
            && !instance_exists(obj_dialoguer)
            && !cutscene
            && chapterSpecificLogic
            && !AP_chapter_specific_item_receive_blacklist()
    );
    
}


function AP_chapter_specific_item_receive_blacklist()
{
    switch(global.chapter)
    {
        case 3:
            switch(room)
            {
                case room_board_1:
                case room_board_1_sword:
                case room_board_2:
                case room_board_2_sword:
                case room_board_3_sword:
                case room_board_dungeon_2:
                case room_board_dungeon_3:
                case room_board_preshadowmantle:
                case room_board_prepostshadowmantle:
                case room_board_postshadowmantle:
                case room_board_preshadowmantle_repeat:
                case room_dw_chef:
                case room_dw_chef_empty:
                case room_dw_rhythm:
                case room_dw_rhythm_empty:
                case room_dw_rhythm_countdown:
                case room_dw_b3bs_bibliox:
                case room_dw_teevie_shuttahmaze:
                    return true;
            }
            break;
        case 4:
            if (i_ex(obj_climb_kris)) return true;
            break;
    }
}

function AP_handle_music()
{
    global.AP_randomized_music_struct = {};
    global.AP_included_music_array = [];
    var seed = global.AP_multiworld;
    
    if (global.AP_randomize_music == 2)
        seed = ((global.AP_multiworld * (global.chapter)) % power(2, 32));

    audio_sound_pitch(snd_songpreview_4rd, 0.5);

    // copying the AP_fill_progressive_weapon_struct function is hilariously inefficient but it's like extremely helpful and will save me headache both now and in the future
    if (global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "AUDIO_ANOTHERHIM.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "mus_introcar.ogg");
    
    if (global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "mus_school.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "s_neo.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "creepydoor.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "creepylandscape.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || ((global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "creepychase.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "legend.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused) || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "lancer.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "battle.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "castletown_empty.ogg");
    
    if (global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "field_of_hopes.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused) || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "shop1.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "lancer_susie.ogg");
    
    if (global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "checkers.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "quiet_autumn.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "forest.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "thrashmachine.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "lancerfight.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "basement.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "tense.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "vs_susie.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "card_castle.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "ruruskaado.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "april_2012.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "hip_shop.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "kingboss.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "AUDIO_DARKNESS.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "prejoker.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "joker.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "friendship.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "THE_HOLY.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "town.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "home.ogg");
    
    if (global.AP_music_sources.chapter_1)
        array_push(global.AP_included_music_array, "dontforget.ogg");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "AUDIO_STORY.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b)
        array_push(global.AP_included_music_array, "menu.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "noelle_school.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "noelle.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "castletown.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused) || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "queen.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "cyber.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "boxing_game.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "cyber_battle_prelude.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "music_guys_intro.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "music_guys.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "cyber_battle_backing_solo");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b && global.AP_music_sources.unused) 
        array_push(global.AP_included_music_array, "cyber_battle.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "cyber_battle_end.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "cyber_shop.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "berdly_theme.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "berdly_chase.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "AUDIO_DEFEAT.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "cybercity.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "cybercity_old.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "spamton_neo_meeting.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "spamton_neo_mix_ex_wip.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "muscle.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "napsta_alarm.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "ch2_credits.ogg");
    
    if (global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "cyberhouse.ogg");
    
    if (global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "cybershop_christmas.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "queen_car_radio.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "spamton_meeting_intro.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "spamton_meeting.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "spamton_battle.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "mansion_entrance.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "berdly_flashback.ogg");
    
    if (global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "mansion.ogg");
    
    if (global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "acid_tunnel.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_3 || (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b && global.AP_music_sources.unused) || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "rouxls_battle.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "noelle_normal.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "noelle_ferriswheel.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "queen_boss.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "giant_queen_appears.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "gigaqueen_pre.ogg");
    
    if (global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "boxing_boss.ogg");
    
    if (global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "the_dark_truth.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "spamton_happy.ogg");
    
    if (global.AP_music_sources.chapter_2)
        array_push(global.AP_included_music_array, "spamton_neo_after.ogg");
    
    if (global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "cybercity_alt.ogg");
    
    if (global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "d.ogg");
    
    if (global.AP_music_sources.chapter_2b)
        array_push(global.AP_included_music_array, "berdly_battle_heartbeat_true.ogg");
    
    if (global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flashback_excerpt.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "ambientwater_weird.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "baci_perugina.ogg");
    
    if (global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "ch3_tvtime.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "ch3_board1.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "board_zelda.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "TV_GAME.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "board_lancer_dig.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "tvromance.ogg");
    
    if (global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused) || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "rudebuster_boss");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "minigame_kart.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "nes_intro_extended_part2.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "greenroom_detune.ogg");
    
    if (global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "battle_vapor.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "tenna_island.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "ch3_board2.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "ch3_south_of_the_border.ogg");
    
    if (global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "ch3-practice_song_combined.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "ch3_karaoke_full.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "ch3_karaoke_example_together_ex.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "trank.ogg");
    
    if (global.AP_music_sources.chapter_3 && (global.AP_music_sources.unused || global.AP_music_sources.dogcheck))
        array_push(global.AP_included_music_array, "ch3_board3.ogg");
    
    if ((global.AP_music_sources.chapter_3 && global.AP_music_sources.unused) || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "stealth.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "tv_results_screen.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "board_4.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "board_4_challenge.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "tv_world.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_5 || global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_confession.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "tenna_battle.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "tv_hall_of_fame.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "knight.ogg");
    
    if (global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "tv_changingroom.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "board_sword_music.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "northernlight.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "glacier.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "nightmare_boss_heavy.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "nightmare_boss_links.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "findher.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || ((global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "ch4_first_intro.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "church_lw.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "town_day.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "susie_diner.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "castle_funk_long.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "rhythm_knockdown_combined.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "boxing_boss_preview.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "ch3_karaoke_preview.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "tenna_battle_preview.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "battle_preview.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5) && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "field_of_hopes_preview.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "noelle_house_wip.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "noelle_distant.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_sevenfour.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_quiz.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_lancer_waltz.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_rouxls.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_waitingroom.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_shop.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_last_prophecy.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "kris_piano_prophecy.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "carol_appeared.ogg");
    
    if (global.AP_music_sources.chapter_4)
        array_push(global.AP_included_music_array, "mus_undynescary");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "darkchurch_intro.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "church_wip.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "ch4_battle.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "gerson_theme_intro.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "church_dark_study.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "smallpiano_room.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "pumpkin_boss.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "climb.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "gerson_defeated.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "kris_piano_lower.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "ch4_extra_boss.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "church_lw_night.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "alt_church_lobby.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "second_church.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "church_zone2_alt_longer_test.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_race.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "church_zone3.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "dark_place.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "titan_pre.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "titan_tower.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "titan_spawn.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "titan_battle.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "oldman_helps_out.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "afterrain_inside.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "rain.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "jitterbug.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "ch4_credits.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b)
        array_push(global.AP_included_music_array, "legend_altered.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b)
        array_push(global.AP_included_music_array, "quiet_church.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "mike_zone.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "mike.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "spamton_dance.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "lancer_annoying.ogg");
    
    if (global.AP_music_sources.chapter_5b)
        array_push(global.AP_included_music_array, "happy_town.ogg");
    
    if (global.AP_music_sources.chapter_5b)
        array_push(global.AP_included_music_array, "ch5_weird_monologue_deep.ogg");
    
    if (global.AP_music_sources.chapter_5b && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "ch5_weird_monologue.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "inappropriate_recycling.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "pirate_zone.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "4rd_sanctuary.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "snd_songpreview_4rd");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "rhythm_3rd_sanctuary_guit.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "kikky_upgrade.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "festival.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "festival_after.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flowery.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "field_of_hopes_insaneintherain_loop.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "rakuichi_buster_wip.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flowery_diner_romantic.ogg");
    
    if (global.AP_music_sources.chapter_5 || (global.AP_music_sources.chapter_1 && global.AP_music_sources.unused))
        array_push(global.AP_included_music_array, "thrash_rating.ogg"); // im choosing to use thrash_rating.ogg instead of flowery_skateboard.ogg for Ride the Board because it's the same song except it loops lol
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "piano_ambience.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "meeting_flower.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "miniboss_new_section_idea_wip.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "cliff_jump_ambience.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "cliff_jump_ambience_nowind.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "cliff.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "shop_3.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "castle_intro.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "castle_loop.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "asgore_serious.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "castle_foyer.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flower_castle.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flower_cafe.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "meeting_flower_orange.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "meeting_flower_orange_highpitch.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "meeting_flower_upbeat_drum.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "meeting_flower_cowboy.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "blue_flower.ogg");
    
    if (global.AP_music_sources.chapter_5 || global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_date_tense.ogg");
    
    if (global.AP_music_sources.chapter_5 || global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_date_fight.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "cowboy_song.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "running_water.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "snd_flowery_bromide_f");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "asgore_serious_drum_only_low.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "asgore_serious_drum_only_flowery_version.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "pink_theme.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "pink_theme_mad.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "pink.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "castle_top.ogg");
    
    if (global.AP_music_sources.chapter_5 || global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "dogroom.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "Flowerman_Arrangement.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "asgore_conspiracy.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flowery_iog_extended.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "flowery_iog.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "flowery_sad.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "festival_night.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "ch5_credits.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "snd_flowery_bromide_r");
    
    if (global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "man.ogg");
    
    if (global.AP_music_sources.chapter_3)
        array_push(global.AP_included_music_array, "man_nes.ogg");
    
    if (global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b)
        array_push(global.AP_included_music_array, "man_2.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "dog_balloon.ogg");
    
    if (global.AP_music_sources.chapter_5)
        array_push(global.AP_included_music_array, "deltarune_piano_collections_by_trevor_alan_gomes.ogg");
    
    if (global.AP_music_sources.chapter_3 || (global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused) && global.AP_music_sources.dogcheck))
        array_push(global.AP_included_music_array, "dogcheck.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused)) && global.AP_music_sources.dogcheck)
        array_push(global.AP_included_music_array, "alarm_titlescreen.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.dogcheck)
        array_push(global.AP_included_music_array, "annoying_prophecy.ogg");
    
    if ((global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.dogcheck)
        array_push(global.AP_included_music_array, "inukuma_wip.ogg");

    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_3 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "AUDIO_DRONE.ogg");
    
    if ((global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "w.ogg");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused) || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "ocean.ogg");
    
    if ((global.AP_music_sources.chapter_1 || ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "bird.ogg");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "fanfare.ogg");
    
    if ((global.AP_music_sources.chapter_1 || (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "elevator.ogg");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "charjoined.ogg");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "GALLERY.ogg");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused) || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_5) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "snd_usefountain");
    
    if ((global.AP_music_sources.chapter_1 || global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused) || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b || global.AP_music_sources.undertale) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_birdnoise.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "honksong.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "queen_intro.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.unused) || global.AP_music_sources.undertale) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "coolbeat.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "alley_ambience.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.unused && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "spamton_house.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b || global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b || global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "wind_highplace.ogg");
    
    if ((global.AP_music_sources.chapter_2 || ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.unused)) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "gameover_short.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "snd_moss_fanfare");
    
    if (global.AP_music_sources.chapter_2 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "KEYGEN.ogg");
    
    if (global.AP_music_sources.chapter_2 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "berdly_descend.ogg");
    
    if (global.AP_music_sources.chapter_2 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "spamton_basement.ogg");
    
    if (global.AP_music_sources.chapter_2 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "shinkansen.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "snd_nes_intro_extended");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "board_ocean.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "newscast.ogg");
    
    if ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "knight_appears.ogg");
    
    if ((global.AP_music_sources.chapter_3 || global.AP_music_sources.chapter_5) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "night_ambience.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "root_8bit.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "nightmare_nes.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "church_hymn.ogg");
    
    if (global.AP_music_sources.chapter_4b && global.AP_music_sources.odd && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "sinedrone_danger.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "bell_ambience.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_temloopshort.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue_level1.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue_chord_basic.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue_level2.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue_level3.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue_level4.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "sound_battle_bg.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue2_level1.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue2_level2.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue2_level3.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue2_level4.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "statue2_level5.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "jitterbug_muffled.ogg");
    
    if ((global.AP_music_sources.chapter_5 || global.AP_music_sources.chapter_5b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "deltarune_logo_ch5_itoki.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "catti_confession.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "bratty_confession.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "birds_ch5.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "ch5_intro_audio.ogg");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "snd_pink_stretch_2_troubled");
    
    if (global.AP_music_sources.chapter_5 && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "snd_pink_stretch_2_fixed");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "sadchord2.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "tv_noise.ogg");
    
    if ((global.AP_music_sources.chapter_2 || global.AP_music_sources.chapter_2b) && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "static_placeholder.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "baci_distort.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "board4_rhythm.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "snd_link_get_key");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "wet_tapdancing.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "wet_tapdancing2.ogg");
    
    if (global.AP_music_sources.chapter_3 && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "wet_tapdancing_failed.ogg");
    
    if (global.AP_music_sources.chapter_4b && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "me.ogg");
    
    if (global.AP_music_sources.chapter_4b && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "sinedrone_danger_high.ogg");
    
    if (global.AP_music_sources.chapter_4b && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "ominous_worse.ogg");
    
    if (global.AP_music_sources.chapter_4b && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "tinnitus.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "strongwind_loop.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_knightthought.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "pianpian.ogg");
    
    if ((global.AP_music_sources.chapter_4 || global.AP_music_sources.chapter_4b) && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "tin_night.ogg");
    
    if (global.AP_music_sources.chapter_5b && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "ch5_inversion_lake_chant.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_story.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu0.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_flowey.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_toriel.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_ruins.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "mus_ruinspiano.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_options_fall.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_prebattle1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_tension.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_battle1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_ghostbattle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_gameover.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_house1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_house2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_boss1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "muscle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_papyrus.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_snowy.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_options_winter.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_st_happytown.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_st_meatfactory.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_st_troubledingle.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_st_him.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_dogmeander.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mystery.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_dogsong.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_town.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_shop.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_snoresymphony.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_papyrusboss.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_date.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu3.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mysteriousroom2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_undynetheme.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_waterfall.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_undynefast.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_waterquiet.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_musicbox.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_birdsong.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_predummy.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_dummybattle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_napstahouse.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_spoopy.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_spoopy_wave.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_spoopy_holiday.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_napstachords.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_temvillage.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_temshop.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_undynetruetheme.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_undyneboss.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_oogloop.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_lab.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mtgameshow.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mettatonbattle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_anothermedium.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_options_summer.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_battle2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_hotel.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_hotel_battle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_news.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_news_battle.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_spider.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_wrongworld.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettmusical1.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettmusical2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettmusical3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettmusical4.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_operatile.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_sansdate.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_coretransition.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_core.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "mus_star.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettafly.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_mettaton_pretransform.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mettaton_ex.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mettsad.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_elevator_last.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_endarea_parta.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_endarea_partb.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_chokedup.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_smallshock.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_barrier.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "mus_kingdescription.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_bergentruckung.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_vsasgore.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_yourbestfriend_3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_intro.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_part1.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_part2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_1.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_4.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_5.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_6s_6.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_repeat_1.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_repeat_2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_finale_1_l.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_finale_2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_finale_3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_saved.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_f_alarm.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_part3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_f_finale_1.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_z_ending.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_undynepiano.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu4.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_hereweare.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_amalgam.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_woofenstein_loop.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu5.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_fallendown2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_dontgiveup.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_xpart.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_a2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_xpart_2.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_xpart_a.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_xpart_b.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_xpart_back.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_reunited.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_menu6.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_leave.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_1.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_3.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_4.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_5.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_6.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_cast_7.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_express_myself.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_toomuch.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_x_undyne_pre.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_x_undyne.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_mettaton_neo.ogg");
    
    if (global.AP_music_sources.undertale)
        array_push(global.AP_included_music_array, "mus_zz_megalovania.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_zzz_c.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_zzz_c2.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused)
        array_push(global.AP_included_music_array, "mus_piano.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.odd)
        array_push(global.AP_included_music_array, "mus_wrongnumbersong.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "abc_123_a.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.unused && global.AP_music_sources.harsh)
        array_push(global.AP_included_music_array, "mus_smile.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.dogcheck)
        array_push(global.AP_included_music_array, "mus_dance_of_dog.ogg");
    
    if (global.AP_music_sources.undertale && global.AP_music_sources.dogcheck)
        array_push(global.AP_included_music_array, "mus_sigh_of_dog.ogg");
    
    if (global.AP_music_sources.custom)
    {
        var custom_song = file_find_first(working_directory + "../custom_mus/*.ogg", fa_none);

        while (custom_song != "")
        {
            array_push(global.AP_included_music_array, custom_song);
            array_push(global.AP_custom_music, custom_song);
            custom_song = file_find_next();
        }

        file_find_close();
    }
    
    random_setseed(seed);
    var shuffled_list = global.AP_included_music_array;
    shuffled_list = scr_array_shuffle(shuffled_list);
    var list_length = 240;
    var initial_length = list_length;
    
    if (global.AP_music_sources.odd)
        list_length += 53;
    
    if (global.AP_music_sources.harsh)
        list_length += 17;
    
    while (array_length(shuffled_list) < list_length)
        shuffled_list = array_concat(shuffled_list, shuffled_list);
    
    global.AP_randomized_music_struct = 
    {
        AUDIO_ANOTHERHIM_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[0] : "AUDIO_ANOTHERHIM_ogg"),
        mus_introcar_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[1] : "mus_introcar_ogg"),
        mus_school_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[2] : "mus_school_ogg"),
        s_neo_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[3] : "s_neo_ogg"),
        creepydoor_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[4] : "creepydoor_ogg"),
        creepylandscape_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[5] : "creepylandscape_ogg"),
        creepychase_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[6] : "creepychase_ogg"),
        legend_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[7] : "legend_ogg"),
        lancer_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[8] : "lancer_ogg"),
        battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[9] : "battle_ogg"),
        castletown_empty_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[10] : "castletown_empty_ogg"),
        field_of_hopes_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[11] : "field_of_hopes_ogg"),
        shop1_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[12] : "shop1_ogg"),
        lancer_susie_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[13] : "lancer_susie_ogg"),
        checkers_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[14] : "checkers_ogg"),
        quiet_autumn_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[15] : "quiet_autumn_ogg"),
        forest_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[16] : "forest_ogg"),
        thrashmachine_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[17] : "thrashmachine_ogg"),
        lancerfight_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[18] : "lancerfight_ogg"),
        basement_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[19] : "basement_ogg"),
        tense_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[20] : "tense_ogg"),
        vs_susie_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[21] : "vs_susie_ogg"),
        card_castle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[22] : "card_castle_ogg"),
        ruruskaado_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[23] : "ruruskaado_ogg"),
        april_2012_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[24] : "april_2012_ogg"),
        hip_shop_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[25] : "hip_shop_ogg"),
        kingboss_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[26] : "kingboss_ogg"),
        AUDIO_DARKNESS_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[27] : "AUDIO_DARKNESS_ogg"),
        prejoker_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[28] : "prejoker_ogg"),
        joker_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[29] : "joker_ogg"),
        friendship_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[30] : "friendship_ogg"),
        THE_HOLY_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[31] : "THE_HOLY_ogg"),
        town_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[32] : "town_ogg"),
        home_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[33] : "home_ogg"),
        dontforget_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[34] : "dontforget_ogg"),
        AUDIO_STORY_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[35] : "AUDIO_STORY_ogg"),
        menu_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[36] : "menu_ogg"),
        noelle_school_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[37] : "noelle_school_ogg"),
        noelle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[38] : "noelle_ogg"),
        castletown_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[39] : "castletown_ogg"),
        queen_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[40] : "queen_ogg"),
        cyber_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[41] : "cyber_ogg"),
        boxing_game_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[42] : "boxing_game_ogg"),
        cyber_battle_prelude_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[43] : "cyber_battle_prelude_ogg"),
        music_guys_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[44] : "music_guys_intro_ogg"),
        music_guys_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[45] : "music_guys_ogg"),
        cyber_battle_backing_solo: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[46] : "cyber_battle_backing_solo"),
        cyber_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[47] : "cyber_battle_ogg"),
        cyber_battle_end_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[48] : "cyber_battle_end_ogg"),
        cyber_shop_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[49] : "cyber_shop_ogg"),
        berdly_theme_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[50] : "berdly_theme_ogg"),
        berdly_chase_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[51] : "berdly_chase_ogg"),
        AUDIO_DEFEAT_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[52] : "AUDIO_DEFEAT_ogg"),
        cybercity_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[53] : "cybercity_ogg"),
        cybercity_old_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[54] : "cybercity_old_ogg"),
        spamton_neo_meeting_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[55] : "spamton_neo_meeting_ogg"),
        spamton_neo_mix_ex_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[56] : "spamton_neo_mix_ex_wip_ogg"),
        muscle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[57] : "muscle_ogg"),
        napsta_alarm_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[58] : "napsta_alarm_ogg"),
        ch2_credits_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[59] : "ch2_credits_ogg"),
        cyberhouse_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[60] : "cyberhouse_ogg"),
        cybershop_christmas_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[61] : "cybershop_christmas_ogg"),
        queen_car_radio_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[62] : "queen_car_radio_ogg"),
        spamton_meeting_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[63] : "spamton_meeting_intro_ogg"),
        spamton_meeting_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[64] : "spamton_meeting_ogg"),
        spamton_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[65] : "spamton_battle_ogg"),
        mansion_entrance_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[66] : "mansion_entrance_ogg"),
        berdly_flashback_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[67] : "berdly_flashback_ogg"),
        mansion_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[68] : "mansion_ogg"),
        acid_tunnel_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[69] : "acid_tunnel_ogg"),
        rouxls_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[70] : "rouxls_battle_ogg"),
        noelle_normal_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[71] : "noelle_normal_ogg"),
        noelle_ferriswheel_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[72] : "noelle_ferriswheel_ogg"),
        queen_boss_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[73] : "queen_boss_ogg"),
        giant_queen_appears_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[74] : "giant_queen_appears_ogg"),
        gigaqueen_pre_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[75] : "gigaqueen_pre_ogg"),
        boxing_boss_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[76] : "boxing_boss_ogg"),
        the_dark_truth_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[77] : "the_dark_truth_ogg"),
        spamton_happy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[78] : "spamton_happy_ogg"),
        spamton_neo_after_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[79] : "spamton_neo_after_ogg"),
        cybercity_alt_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[80] : "cybercity_alt_ogg"),
        d_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[81] : "d_ogg"),
        berdly_battle_heartbeat_true_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[82] : "berdly_battle_heartbeat_true_ogg"),
        flashback_excerpt_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[83] : "flashback_excerpt_ogg"),
        ambientwater_weird_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[84] : "ambientwater_weird_ogg"),
        baci_perugina_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[85] : "baci_perugina_ogg"),
        ch3_tvtime_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[86] : "ch3_tvtime_ogg"),
        ch3_board1_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[87] : "ch3_board1_ogg"),
        board_zelda_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[88] : "board_zelda_ogg"),
        TV_GAME_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[89] : "TV_GAME_ogg"),
        board_lancer_dig_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[90] : "board_lancer_dig_ogg"),
        tvromance_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[91] : "tvromance_ogg"),
        rudebuster_boss: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[92] : "rudebuster_boss"),
        minigame_kart_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[93] : "minigame_kart_ogg"),
        nes_intro_extended_part2_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[94] : "nes_intro_extended_part2_ogg"),
        greenroom_detune_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[95] : "greenroom_detune_ogg"),
        battle_vapor_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[96] : "battle_vapor_ogg"),
        tenna_island_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[97] : "tenna_island_ogg"),
        ch3_board2_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[98] : "ch3_board2_ogg"),
        ch3_south_of_the_border_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[99] : "ch3_south_of_the_border_ogg"),
        ch3-practice_song_combined_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[100] : "ch3-practice_song_combined_ogg"),
        ch3_karaoke_full_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[101] : "ch3_karaoke_full_ogg"),
        ch3_karaoke_example_together_ex_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[102] : "ch3_karaoke_example_together_ex_ogg"),
        trank_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[103] : "trank_ogg"),
        ch3_board3_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[104] : "ch3_board3_ogg"),
        stealth_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[105] : "stealth_ogg"),
        tv_results_screen_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[106] : "tv_results_screen_ogg"),
        board_4_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[107] : "board_4_ogg"),
        board_4_challenge_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[108] : "board_4_challenge_ogg"),
        tv_world_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[109] : "tv_world_ogg"),
        mus_confession_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[110] : "mus_confession_ogg"),
        tenna_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[111] : "tenna_battle_ogg"),
        tv_hall_of_fame_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[112] : "tv_hall_of_fame_ogg"),
        knight_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[113] : "knight_ogg"),
        tv_changingroom_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[114] : "tv_changingroom_ogg"),
        board_sword_music_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[115] : "board_sword_music_ogg"),
        northernlight_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[116] : "northernlight_ogg"),
        glacier_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[117] : "glacier_ogg"),
        nightmare_boss_heavy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[118] : "nightmare_boss_heavy_ogg"),
        nightmare_boss_links_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[119] : "nightmare_boss_links_ogg"),
        findher_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[120] : "findher_ogg"),
        ch4_first_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[121] : "ch4_first_intro_ogg"),
        church_lw_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[122] : "church_lw_ogg"),
        town_day_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[123] : "town_day_ogg"),
        susie_diner_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[124] : "susie_diner_ogg"),
        castle_funk_long_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[125] : "castle_funk_long_ogg"),
        rhythm_knockdown_combined_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[126] : "rhythm_knockdown_combined_ogg"),
        boxing_boss_preview_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[127] : "boxing_boss_preview_ogg"),
        ch3_karaoke_preview_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[128] : "ch3_karaoke_preview_ogg"),
        tenna_battle_preview_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[129] : "tenna_battle_preview_ogg"),
        battle_preview_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[130] : "battle_preview_ogg"),
        field_of_hopes_preview_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[131] : "field_of_hopes_preview_ogg"),
        noelle_house_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[132] : "noelle_house_wip_ogg"),
        noelle_distant_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[133] : "noelle_distant_ogg"),
        kris_piano_sevenfour_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[134] : "kris_piano_sevenfour_ogg"),
        kris_piano_quiz_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[135] : "kris_piano_quiz_ogg"),
        kris_piano_lancer_waltz_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[136] : "kris_piano_lancer_waltz_ogg"),
        kris_piano_rouxls_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[137] : "kris_piano_rouxls_ogg"),
        kris_piano_waitingroom_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[138] : "kris_piano_waitingroom_ogg"),
        kris_piano_shop_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[139] : "kris_piano_shop_ogg"),
        kris_piano_last_prophecy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[140] : "kris_piano_last_prophecy_ogg"),
        kris_piano_prophecy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[141] : "kris_piano_prophecy_ogg"),
        carol_appeared_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[142] : "carol_appeared_ogg"),
        mus_undynescary: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[143] : "mus_undynescary"),
        darkchurch_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[144] : "darkchurch_intro_ogg"),
        church_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[145] : "church_wip_ogg"),
        ch4_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[146] : "ch4_battle_ogg"),
        gerson_theme_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[147] : "gerson_theme_intro_ogg"),
        church_dark_study_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[148] : "church_dark_study_ogg"),
        smallpiano_room_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[149] : "smallpiano_room_ogg"),
        pumpkin_boss_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[150] : "pumpkin_boss_ogg"),
        climb_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[151] : "climb_ogg"),
        gerson_defeated_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[152] : "gerson_defeated_ogg"),
        kris_piano_lower_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[153] : "kris_piano_lower_ogg"),
        ch4_extra_boss_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[154] : "ch4_extra_boss_ogg"),
        church_lw_night_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[155] : "church_lw_night_ogg"),
        alt_church_lobby_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[156] : "alt_church_lobby_ogg"),
        second_church_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[157] : "second_church_ogg"),
        church_zone2_alt_longer_test_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[158] : "church_zone2_alt_longer_test_ogg"),
        mus_race_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[159] : "mus_race_ogg"),
        church_zone3_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[160] : "church_zone3_ogg"),
        dark_place_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[161] : "dark_place_ogg"),
        titan_pre_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[162] : "titan_pre_ogg"),
        titan_tower_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[163] : "titan_tower_ogg"),
        titan_spawn_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[164] : "titan_spawn_ogg"),
        titan_battle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[165] : "titan_battle_ogg"),
        oldman_helps_out_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[166] : "oldman_helps_out_ogg"),
        afterrain_inside_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[167] : "afterrain_inside_ogg"),
        rain_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[168] : "rain_ogg"),
        jitterbug_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[169] : "jitterbug_ogg"),
        ch4_credits_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[170] : "ch4_credits_ogg"),
        legend_altered_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[171] : "legend_altered_ogg"),
        quiet_church_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[172] : "quiet_church_ogg"),
        mike_zone_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[173] : "mike_zone_ogg"),
        mike_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[174] : "mike_ogg"),
        spamton_dance_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[175] : "spamton_dance_ogg"),
        lancer_annoying_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[176] : "lancer_annoying_ogg"),
        happy_town_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[177] : "happy_town_ogg"),
        ch5_weird_monologue_deep_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[178] : "ch5_weird_monologue_deep_ogg"),
        ch5_weird_monologue_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[179] : "ch5_weird_monologue_ogg"),
        inappropriate_recycling_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[180] : "inappropriate_recycling_ogg"),
        pirate_zone_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[181] : "pirate_zone_ogg"),
        4rd_sanctuary_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[182] : "4rd_sanctuary_ogg"),
        snd_songpreview_4rd: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[183] : "snd_songpreview_4rd"),
        rhythm_3rd_sanctuary_guit_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[184] : "rhythm_3rd_sanctuary_guit_ogg"),
        kikky_upgrade_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[185] : "kikky_upgrade_ogg"),
        festival_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[186] : "festival_ogg"),
        festival_after_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[187] : "festival_after_ogg"),
        flowery_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[188] : "flowery_ogg"),
        field_of_hopes_insaneintherain_loop_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[189] : "field_of_hopes_insaneintherain_loop_ogg"),
        rakuichi_buster_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[190] : "rakuichi_buster_wip_ogg"),
        flowery_diner_romantic_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[191] : "flowery_diner_romantic_ogg"),
        thrash_rating_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[192] : "thrash_rating_ogg"),
        piano_ambience_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[193] : "piano_ambience_ogg"),
        meeting_flower_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[194] : "meeting_flower_ogg"),
        miniboss_new_section_idea_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[195] : "miniboss_new_section_idea_wip_ogg"),
        cliff_jump_ambience_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[196] : "cliff_jump_ambience_ogg"),
        cliff_jump_ambience_nowind_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[197] : "cliff_jump_ambience_nowind_ogg"),
        cliff_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[198] : "cliff_ogg"),
        shop_3_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[199] : "shop_3_ogg"),
        castle_intro_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[200] : "castle_intro_ogg"),
        castle_loop_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[201] : "castle_loop_ogg"),
        asgore_serious_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[202] : "asgore_serious_ogg"),
        castle_foyer_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[203] : "castle_foyer_ogg"),
        flower_castle_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[204] : "flower_castle_ogg"),
        flower_cafe_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[205] : "flower_cafe_ogg"),
        meeting_flower_orange_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[206] : "meeting_flower_orange_ogg"),
        meeting_flower_orange_highpitch_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[207] : "meeting_flower_orange_highpitch_ogg"),
        meeting_flower_upbeat_drum_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[208] : "meeting_flower_upbeat_drum_ogg"),
        meeting_flower_cowboy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[209] : "meeting_flower_cowboy_ogg"),
        blue_flower_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[210] : "blue_flower_ogg"),
        mus_date_tense_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[211] : "mus_date_tense_ogg"),
        mus_date_fight_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[212] : "mus_date_fight_ogg"),
        cowboy_song_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[213] : "cowboy_song_ogg"),
        running_water_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[214] : "running_water_ogg"),
        snd_flowery_bromide_f: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[215] : "snd_flowery_bromide_f"),
        asgore_serious_drum_only_low_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[216] : "asgore_serious_drum_only_low_ogg"),
        asgore_serious_drum_only_flowery_version_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[217] : "asgore_serious_drum_only_flowery_version_ogg"),
        pink_theme_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[218] : "pink_theme_ogg"),
        pink_theme_mad_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[219] : "pink_theme_mad_ogg"),
        pink_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[220] : "pink_ogg"),
        castle_top_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[221] : "castle_top_ogg"),
        dogroom_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[222] : "dogroom_ogg"),
        Flowerman_Arrangement_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[223] : "Flowerman_Arrangement_ogg"),
        asgore_conspiracy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[224] : "asgore_conspiracy_ogg"),
        flowery_iog_extended_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[225] : "flowery_iog_extended_ogg"),
        flowery_iog_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[226] : "flowery_iog_ogg"),
        flowery_sad_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[227] : "flowery_sad_ogg"),
        festival_night_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[228] : "festival_night_ogg"),
        ch5_credits_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[229] : "ch5_credits_ogg"),
        snd_flowery_bromide_r: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[230] : "snd_flowery_bromide_r"),
        man_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[231] : "man_ogg"),
        man_nes_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[232] : "man_nes_ogg"),
        man_2_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[233] : "man_2_ogg"),
        dog_balloon_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[234] : "dog_balloon_ogg"),
        deltarune_piano_collections_by_trevor_alan_gomes_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[235] : "deltarune_piano_collections_by_trevor_alan_gomes_ogg"),
        dogcheck_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[236] : "dogcheck_ogg"),
        alarm_titlescreen_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[237] : "alarm_titlescreen_ogg"),
        annoying_prophecy_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[238] : "annoying_prophecy_ogg"),
        inukuma_wip_ogg: (((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) ? shuffled_list[239] : "inukuma_wip_ogg"),
        AUDIO_DRONE_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length] : "AUDIO_DRONE_ogg"),
        w_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 1] : "w_ogg"),
        ocean_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 2] : "ocean_ogg"),
        bird_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 3] : "bird_ogg"),
        fanfare_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 4] : "fanfare_ogg"),
        elevator_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 5] : "elevator_ogg"),
        charjoined_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 6] : "charjoined_ogg"),
        GALLERY_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 7] : "GALLERY_ogg"),
        snd_usefountain: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 8] : "snd_u\_oggsefountain"),
        mus_birdnoise_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 9] : "mus_birdnoise_ogg"),
        honksong_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 10] : "honksong_ogg"),
        queen_intro_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 11] : "queen_intro_ogg"),
        coolbeat_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 12] : "coolbeat_ogg"),
        alley_ambience_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 13] : "alley_ambience_ogg"),
        spamton_house_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 14] : "spamton_house_ogg"),
        wind_highplace_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 15] : "wind_highplace_ogg"),
        gameover_short_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 16] : "gameover_short_ogg"),
        snd_moss_fanfare: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 17] : "snd_moss_fanfare"),
        KEYGEN_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 18] : "KEYGEN_ogg"),
        berdly_descend_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 19] : "berdly_descend_ogg"),
        spamton_basement_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 20] : "spamton_basement_ogg"),
        shinkansen_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 21] : "shinkansen_ogg"),
        snd_nes_intro_extended: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 22] : "snd_nes_intro_extended"),
        board_ocean_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 23] : "board_ocean_ogg"),
        newscast_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 24] : "newscast_ogg"),
        knight_appears_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 25] : "knight_appears_ogg"),
        night_ambience_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 26] : "night_ambience_ogg"),
        root_8bit_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 27] : "root_8bit_ogg"),
        nightmare_nes_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 28] : "nightmare_nes_ogg"),
        church_hymn_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 29] : "church_hymn_ogg"),
        sinedrone_danger_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 30] : "sinedrone_danger_ogg"),
        bell_ambience_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 31] : "bell_ambience_ogg"),
        mus_temloopshort_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 32] : "mus_temloopshort_ogg"),
        statue_level1_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 33] : "statue_level1_ogg"),
        statue_chord_basic_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 34] : "statue_chord_basic_ogg"),
        statue_level2_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 35] : "statue_level2_ogg"),
        statue_level3_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 36] : "statue_level3_ogg"),
        statue_level4_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 37] : "statue_level4_ogg"),
        sound_battle_bg_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 38] : "sound_battle_bg_ogg"),
        statue2_level1_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 39] : "statue2_level1_ogg"),
        statue2_level2_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 40] : "statue2_level2_ogg"),
        statue2_level3_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 41] : "statue2_level3_ogg"),
        statue2_level4_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 42] : "statue2_level4_ogg"),
        statue2_level5_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 43] : "statue2_level5_ogg"),
        jitterbug_muffled_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 44] : "jitterbug_muffled_ogg"),
        deltarune_logo_ch5_itoki_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 45] : "deltarune_logo_ch5_itoki_ogg"),
        catti_confession_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 46] : "catti_confession_ogg"),
        bratty_confession_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 47] : "bratty_confession_ogg"),
        birds_ch5_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 48] : "birds_ch5_ogg"),
        ch5_intro_audio_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 49] : "ch5_intro_audio_ogg"),
        snd_pink_stretch_2_troubled: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 50] : "snd_pink_stretch_2_troubled"),
        snd_pink_stretch_2_fixed: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 51] : "snd_pink_stretch_2_fixed"),
        sadchord2_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.odd) ? shuffled_list[initial_length + 52] : "sadchord2_ogg"),
        tv_noise_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 53 : initial_length] : "tv_noise_ogg"),
        static_placeholder_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 54 : initial_length + 1] : "static_placeholder_ogg"),
        baci_distort_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 55 : initial_length + 2] : "baci_distort_ogg"),
        board4_rhythm_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 56 : initial_length + 3] : "board4_rhythm_ogg"),
        snd_link_get_key: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 57 : initial_length + 4] : "snd_link_get_key"),
        wet_tapdancing_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 58 : initial_length + 5] : "wet_tapdancing_ogg"),
        wet_tapdancing2_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 59 : initial_length + 6] : "wet_tapdancing2_ogg"),
        wet_tapdancing_failed_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 60 : initial_length + 7] : "wet_tapdancing_failed_ogg"),
        me_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 61 : initial_length + 8] : "me_ogg"),
        sinedrone_danger_high_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 62 : initial_length + 9] : "sinedrone_danger_high_ogg"),
        ominous_worse_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 63 : initial_length + 10] : "ominous_worse_ogg"),
        tinnitus_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 64 : initial_length + 11] : "tinnitus_ogg"),
        strongwind_loop_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 65 : initial_length + 12] : "strongwind_loop_ogg"),
        mus_knightthought_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 66 : initial_length + 13] : "mus_knightthought_ogg"),
        pianpian_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 67 : initial_length + 14] : "pianpian_ogg"),
        tin_night_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 68 : initial_length + 15] : "tin_night_ogg"),
        ch5_inversion_lake_chant_ogg: ((((global.AP_randomize_music == 1) || (global.AP_randomize_music == 2)) && global.AP_music_sources.harsh) ? shuffled_list[global.AP_music_sources.odd ? initial_length + 69 : initial_length + 16] : "ch5_inversion_lake_chant_ogg"),
    };
}
