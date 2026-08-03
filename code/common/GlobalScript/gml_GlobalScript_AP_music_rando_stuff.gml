/// FUNCTIONS
function AP_get_random_song(arg0)
{
    var _song = arg0;
    var _index = -1;

    if (global.AP_randomize_music == (1 || 2))
    {
        _index = array_get_index(global.AP_randomized_music_list, arg0)
        _song = global.AP_randomized_music_list_shuffled[_index];
    }

    if (global.AP_randomize_music == 3)
    {
        _index = irandom_range(0, (array_length(global.AP_randomized_music_list) - 1));
        _song = global.AP_randomized_music_list[_index];
    }

    if (_index == -1)
        _song = arg0

    return _song;
}

function AP_get_randomized_music_list()
{
    var _song_array = [];
    var _included_chapters = [0, 0, 0, 0, 0];
    var _undertale = 0;

    if (global.AP_music_source == (1 || 4))
    {
        _included_chapters = [1, 1, 1, 1, 1];
    }
    else if (global.AP_music_source == (0 || 3))
    {
        for (var i = 0; i < global.AP_max_chapter; i++)
        {
            if (global.AP_include_chapters[i] == 1)
                _included_chapters[i] = 1;
        }
    }

    if (global.AP_music_source > 1)
    {
        _undertale = 1;
    }
    
    // huge shoutout to deltarune.wiki for stating which chapters each song plays in, as well as listing the unused and unlisted songs.
    if ((global.AP_music_source != 2)) // ALL CHAPTERS
    {
        array_push(_song_array, "battle.ogg", "AUDIO_DARKNESS.ogg")
        
        if (global.AP_include_unused_music == 1)
            array_push(_song_array, , , );
        
        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );
            
        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
        
        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );
        
        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (_included_chapters[0] == 1) // CHAPTER 1
    {
        array_push(_song_array, "AUDIO_ANOTHERHIM.ogg", "mus_introcar.ogg", "mus_school.ogg", "s_neo.ogg", "creepydoor.ogg", "creepylandscape.ogg", "creepychase.ogg", "legend.ogg", "lancer.ogg", "castletown_empty.ogg", "field_of_hopes.ogg", "shop1.ogg", "lancer_susie.ogg", "checkers.ogg", "quiet_autumn.ogg", "forest.ogg", "thrashmachine.ogg", "lancerfight.ogg", "basement.ogg", "tense.ogg", "vs_susie.ogg", "card_castle.ogg", "ruruskaado.ogg", "april_2012.ogg", "hip_shop.ogg", "kingboss.ogg", "prejoker.ogg", "joker.ogg", "friendship.ogg", "THE_HOLY.ogg", "town.ogg", "home.ogg", "dontforget.ogg", "AUDIO_STORY.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "dogcheck.ogg", "thrash_rating.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "bird.ogg", "fanfare.ogg", "GALLERY.ogg", snd_usefountain, "AUDIO_DRONE.ogg", "w.ogg", "elevator.ogg", "charjoined.ogg", "ocean.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (_included_chapters[1] == 1) // CHAPTER 2
    {
        array_push(_song_array, "creepydoor.ogg", "creepychase.ogg", "legend.ogg", "lancer.ogg", "castletown_empty.ogg", "shop1.ogg", "ruruskaado.ogg", "hip_shop.ogg", "THE_HOLY.ogg", "town.ogg", "home.ogg", "AUDIO_STORY.ogg", "menu.ogg", "noelle_school.ogg", "castletown.ogg", "queen.ogg", "cyber.ogg", "boxing_game.ogg", "cyber_battle_prelude.ogg", "music_guys_intro.ogg", "music_guys.ogg", cyber_battle_backing_solo, "cyber_battle_end.ogg", "cyber_shop.ogg", "berdly_theme.ogg", "berdly_chase.ogg", "AUDIO_DEFEAT.ogg", "cybercity.ogg", "cyberhouse.ogg", "cybershop_christmas.ogg", "queen_car_radio.ogg", "spamton_meeting_intro.ogg", "spamton_meeting.ogg", "spamton_battle.ogg", "mansion_entrance.ogg", "berdly_flashback.ogg", "mansion.ogg", "KEYGEN.ogg", "acid_tunnel.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "noelle_ferriswheel.ogg", "queen_boss.ogg", "giant_queen_appears.ogg", "gigaqueen_pre.ogg", "boxing_boss.ogg", "the_dark_truth.ogg", "spamton_neo_meeting.ogg", "spamton_neo_mix_ex_wip.ogg", "spamton_happy.ogg", "spamton_neo_after.ogg", "muscle.ogg", "napsta_alarm.ogg", "ch2_credits.ogg", "honksong.ogg", "flashback_excerpt.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "alarm_titlescreen.ogg", "cyber_battle.ogg", "cybercity_old.ogg", "noelle.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "GALLERY.ogg", snd_usefountain, "charjoined.ogg", "ocean.ogg", "queen_intro.ogg", "spamton_basement.ogg", "alley_ambience.ogg", "shinkansen.ogg", "wind_highplace.ogg", "berdly_descend.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, "spamton_house.ogg", , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, "static_placeholder.ogg", , );
    }
    if (_included_chapters[2] == 1) // CHAPTER 3
    {
        array_push(_song_array, "creepychase.ogg", "legend.ogg", "ruruskaado.ogg", "AUDIO_STORY.ogg", "dogcheck.ogg", "menu.ogg", "AUDIO_DEFEAT.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "ch2_credits.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "ch3_board3.ogg", "ch3_board1.ogg", "nightmare_boss_links.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "AUDIO_DRONE.ogg", "wind_highplace.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, snd_usefountain, "wet_tapdancing.ogg", "wet_tapdancing2.ogg", "wet_tapdancing_failed.ogg");

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (_included_chapters[3] == 1) // CHAPTER 4
    {
        array_push(_song_array, "creepydoor.ogg", "creepychase.ogg", "shop1.ogg", "tense.ogg", "home.ogg", "menu.ogg", "noelle_school.ogg", "castletown.ogg", "AUDIO_DEFEAT.ogg", "queen_car_radio.ogg", "noelle_normal.ogg", "boxing_boss.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "annoying_prophecy.ogg", "church_zone2_alt_longer_test.ogg", mus_undynescary);

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "fanfare.ogg","GALLERY.ogg", snd_usefountain, "charjoined.ogg", "ocean.ogg", "wind_highplace.ogg", "afterrain_inside.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, "sinedrone_danger.ogg", , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (_included_chapters[4] == 1) // CHAPTER 5 (also yes, i know Ride the Board is "flowery_skateboard.ogg", it's just that "thrash_rating.ogg" loops i chose to use that instead)
    {
        array_push(_song_array, "creepydoor.ogg", "lancer.ogg", "shop1.ogg", "thrashmachine.ogg", "menu.ogg", "castletown.ogg", "AUDIO_DEFEAT.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "boxing_boss.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "inukuma_wip.ogg", "rhythm_3rd_sanctuary_guit.ogg", "rhythm_3rd_sanctuary_noguit.ogg", "castle_intro.ogg", "cliff_jump_ambience_nowind.ogg", "meeting_flower_upbeat_drum.ogg", "flowery_iog.ogg", "ch5_weird_monologue.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, snd_usefountain, "wind_highplace.ogg", snd_pink_stretch_2_troubled, snd_pink_stretch_2_fixed);

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (_undertale == 1) // UNDERTALE
    {
        array_push(_song_array, );

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }

    var _songs = array_unique(_song_array);

    return _songs;
}

function AP_shuffle_music_rando_list()
{
    var _music_file = AP_get_save_folder_prefix() + "music.txt";
    var _shuffled = [];

    if (!file_exists(_music_file) || global.AP_randomize_music == 2)
    {
        var _shuffled_list = array_shuffle(global.AP_randomized_music_list);

        var _write = file_text_open_write(_music_file);

        for (var i = 0; i < array_length(global.AP_randomized_music_list); i++)
        {
            file_text_write_string(_write, _shuffled_list[i]);
            file_text_writeln(_write);
        }

        file_text_close(_write);
    }

    var _read = file_text_open_read(_music_file);
    for (var i = 0; i < array_length(global.AP_randomized_music_list); i++)
    {
        _shuffled[i] = file_text_read_string(_read);
        file_text_readln(_read);
    }
    file_text_close(_read);

    return _shuffled;
}
