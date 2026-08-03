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
        array_push(_song_array, "battle.ogg", "AUDIO_DARKNESS.ogg")
    
    if (_included_chapters[0] == 1) // CHAPTER 1
    {
        array_push(_song_array, "AUDIO_ANOTHERHIM.ogg", "mus_introcar.ogg", "mus_school.ogg", "s_neo.ogg", "creepydoor.ogg", "creepylandscape.ogg", "creepychase.ogg", "legend.ogg", "lancer.ogg", "castletown_empty.ogg", "field_of_hopes.ogg", "shop1.ogg", "lancer_susie.ogg", "checkers.ogg", "quiet_autumn.ogg", "forest.ogg", "thrashmachine.ogg", "lancerfight.ogg", "basement.ogg", "tense.ogg", "vs_susie.ogg", "card_castle.ogg", "ruruskaado.ogg", "april_2012.ogg", "hip_shop.ogg", "kingboss.ogg", "prejoker.ogg", "joker.ogg", "friendship.ogg", "THE_HOLY.ogg", "town.ogg", "home.ogg", "dontforget.ogg", "AUDIO_STORY.ogg", "man.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "dogcheck.ogg", "thrash_rating.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "bird.ogg", "fanfare.ogg", "GALLERY.ogg", snd_usefountain, "AUDIO_DRONE.ogg", "w.ogg", "elevator.ogg", "charjoined.ogg", "ocean.ogg");
    }
    if (_included_chapters[1] == 1) // CHAPTER 2
    {
        array_push(_song_array, "creepydoor.ogg", "creepychase.ogg", "legend.ogg", "lancer.ogg", "castletown_empty.ogg", "shop1.ogg", "ruruskaado.ogg", "hip_shop.ogg", "THE_HOLY.ogg", "town.ogg", "home.ogg", "AUDIO_STORY.ogg", "menu.ogg", "noelle_school.ogg", "castletown.ogg", "queen.ogg", "cyber.ogg", "boxing_game.ogg", "cyber_battle_prelude.ogg", "music_guys_intro.ogg", "music_guys.ogg", cyber_battle_backing_solo, "cyber_battle_end.ogg", "cyber_shop.ogg", "berdly_theme.ogg", "berdly_chase.ogg", "AUDIO_DEFEAT.ogg", "cybercity.ogg", "cyberhouse.ogg", "cybershop_christmas.ogg", "queen_car_radio.ogg", "spamton_meeting_intro.ogg", "spamton_meeting.ogg", "spamton_battle.ogg", "mansion_entrance.ogg", "berdly_flashback.ogg", "mansion.ogg", "KEYGEN.ogg", "acid_tunnel.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "noelle_ferriswheel.ogg", "queen_boss.ogg", "giant_queen_appears.ogg", "gigaqueen_pre.ogg", "boxing_boss.ogg", "the_dark_truth.ogg", "spamton_neo_meeting.ogg", "spamton_neo_mix_ex_wip.ogg", "spamton_happy.ogg", "spamton_neo_after.ogg", "muscle.ogg", "napsta_alarm.ogg", "ch2_credits.ogg", "honksong.ogg", "flashback_excerpt.ogg", "man.ogg", "cybercity_alt.ogg", "d.ogg", "berdly_battle_heartbeat_true.ogg", "gameover_short.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "alarm_titlescreen.ogg", "cyber_battle.ogg", "cybercity_old.ogg", "noelle.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "GALLERY.ogg", snd_usefountain, "charjoined.ogg", "ocean.ogg", "queen_intro.ogg", "spamton_basement.ogg", "alley_ambience.ogg", "shinkansen.ogg", "wind_highplace.ogg", "berdly_descend.ogg", "coolbeat.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, "tv_noise.ogg");
    }
    if (_included_chapters[2] == 1) // CHAPTER 3
    {
        array_push(_song_array, "creepychase.ogg", "legend.ogg", "ruruskaado.ogg", "AUDIO_STORY.ogg", "dogcheck.ogg", "menu.ogg", "AUDIO_DEFEAT.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "ch2_credits.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg", "ch3_tvtime.ogg", "board_zelda.ogg", "TV_GAME.ogg", "board_lancer_dig.ogg", "tvromance.ogg", "rudebuster_boss.ogg", "minigame_kart.ogg", "nes_intro_extended_part2.ogg", "greenroom_detune.ogg", "battle_vapor.ogg", "tenna_island.ogg", "ch3_board2.ogg", "ch3_south_of_the_border.ogg", "ch3-practice_song_combined.ogg", "ch3_karaoke_full.ogg", "trank.ogg", "tv_results_screen.ogg", "board_4.ogg", "board_4_challenge.ogg", "tv_world.ogg", "tenna_battle.ogg", "tv_hall_of_fame.ogg", "knight.ogg", "tv_changingroom.ogg", "board_sword_music.ogg", "northernlight.ogg", "glacier.ogg", "nightmare_boss_heavy.ogg", "findher.ogg", "man.ogg", "man_nes.ogg", "mus_confession.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "ch3_board3.ogg", "ch3_board1.ogg", "nightmare_boss_links.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "AUDIO_DRONE.ogg", "wind_highplace.ogg", "knight_appears.ogg", "night_ambience.ogg", "root_8bit.ogg", "nightmare_nes.ogg", "ambientwater_weird.ogg", "board_ocean.ogg", "newscast.ogg", "board4_rhythm.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, "baci_distort.ogg");

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, snd_usefountain, "wet_tapdancing.ogg", "wet_tapdancing2.ogg", "wet_tapdancing_failed.ogg");
    }
    if (_included_chapters[3] == 1) // CHAPTER 4
    {
        array_push(_song_array, "creepydoor.ogg", "creepychase.ogg", "shop1.ogg", "tense.ogg", "home.ogg", "menu.ogg", "noelle_school.ogg", "castletown.ogg", "AUDIO_DEFEAT.ogg", "queen_car_radio.ogg", "noelle_normal.ogg", "boxing_boss.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg", "tvromance.ogg", "nes_intro_extended_part2.ogg", "ch3_karaoke_full.ogg", "tenna_battle.ogg", "tv_changingroom.ogg", "church_lw.ogg", "church_hymn.ogg", "town_day.ogg", "susie_diner.ogg", "castle_funk_long.ogg", "rhythm_knockdown_combined.ogg", "noelle_house_wip.ogg", "noelle_distant.ogg", "darkchurch_intro.ogg", "church_wip.ogg", "ch4_battle.ogg", "gerson_theme_intro.ogg", "church_dark_study.ogg", "pumpkin_boss.ogg", "climb.ogg", "gerson_defeated.ogg", "kris_piano_lower.ogg", "ch4_extra_boss.ogg", "church_lw_night.ogg", "second_church.ogg", "church_zone3.ogg", "dark_place.ogg", "titan_pre.ogg", "titan_tower.ogg", "titan_spawn.ogg", "titan_battle.ogg", "oldman_helps_out.ogg", "rain.ogg", "jitterbug.ogg", "ch4_credits.ogg", "legend_altered.ogg", "quiet_church.ogg", "mike_zone.ogg", "mike.ogg", "spamton_dance.ogg", "ch4_first_intro.ogg", "smallpiano_room.ogg", "alt_church_lobby.ogg", "lancer_annoying.ogg", "man_2.ogg", "kris_piano_sevenfour.ogg", "kris_piano_quiz.ogg", "kris_piano_lancer_waltz.ogg", "kris_piano_rouxls.ogg", "kris_piano_waitingroom.ogg", "kris_piano_shop.ogg", "kris_piano_last_prophecy.ogg", "kris_piano_prophecy.ogg", "mus_race.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "annoying_prophecy.ogg", "church_zone2_alt_longer_test.ogg", mus_undynescary);

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "fanfare.ogg","GALLERY.ogg", snd_usefountain, "charjoined.ogg", "ocean.ogg", "wind_highplace.ogg", "carol_appeared.ogg", "bell_ambience.ogg", "statue_level1.ogg", "statue_chord_basic.ogg", "statue_level2.ogg", "statue_level3.ogg", "statue_level4.ogg", "sound_battle_bg.ogg", "statue2_level1.ogg", "statue2_level2.ogg", "statue2_level3.ogg", "statue2_level4.ogg", "statue2_level5.ogg", "sadchord2.ogg", "afterrain_inside.ogg", "jitterbug_muffled.ogg", "mus_temloopshort.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, "tin_night.ogg", "strongwind_loop.ogg", "mus_knightthought.ogg", "pianpian.ogg", "me.ogg", "sinedrone_danger_high.ogg", "ominous_worse.ogg", "tinnitus.ogg");

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, "sinedrone_danger.ogg");
    }
    if (_included_chapters[4] == 1) // CHAPTER 5 (also yes, i know Ride the Board is "flowery_skateboard.ogg", it's just that "thrash_rating.ogg" loops i chose to use that instead)
    {
        array_push(_song_array, "creepydoor.ogg", "lancer.ogg", "shop1.ogg", "thrashmachine.ogg", "menu.ogg", "castletown.ogg", "AUDIO_DEFEAT.ogg", "rouxls_battle.ogg", "noelle_normal.ogg", "boxing_boss.ogg", "flashback_excerpt.ogg", "baci_perugina.ogg", "ch3_tvtime.ogg", "rudebuster_boss.ogg", "minigame_kart.ogg", "nes_intro_extended_part2.ogg", "ch3_karaoke_full.ogg", "tenna_battle.ogg", "tv_changingroom.ogg", "susie_diner.ogg", "castle_funk_long.ogg", "rhythm_knockdown_combined.ogg", "legend_altered.ogg", "quiet_church.ogg", "lancer_annoying.ogg", "inappropriate_recycling.ogg", "pirate_zone.ogg", "4rd_sanctuary.ogg", "festival.ogg", "festival_after.ogg", "flowery.ogg", "field_of_hopes_insaneintherain_loop.ogg", "rakuichi_buster_wip.ogg", "flowery_diner_romantic.ogg", "thrash_rating.ogg", "piano_ambience.ogg", "meeting_flower.ogg", "miniboss_new_section_idea_wip.ogg", "cliff_jump_ambience.ogg", "cliff.ogg", "shop_3.ogg", "castle_loop.ogg", "asgore_serious.ogg", "castle_foyer.ogg", "flower_castle.ogg", "flower_cafe.ogg", "meeting_flower_orange.ogg", "meeting_flower_cowboy.ogg", "blue_flower.ogg", "running_water.ogg", snd_flowery_bromide_f, "pink_theme.ogg", "pink.ogg", "castle_top.ogg", "Flowerman_Arrangement.ogg", "asgore_conspiracy.ogg", "flowery_iog_extended.ogg", "flowery_sad.ogg", "festival_night.ogg", "ch5_credits.ogg", snd_flowery_bromide_r, "stealth.ogg", "kikky_upgrade.ogg", "meeting_flower_orange_highpitch.ogg", "asgore_serious_drum_only_low.ogg", "asgore_serious_drum_only_flowery_version.ogg", "cowboy_song.ogg", "pink_theme_mad.ogg", "dog_balloon.ogg", "deltarune_piano_collections_by_trevor_alan_gomes.ogg", "happy_town.ogg", "ch5_weird_monologue_deep.ogg", "mus_confession.ogg", "mus_race.ogg", "mus_date_tense.ogg", "mus_date_fight.ogg", "dogroom.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "inukuma_wip.ogg", "rhythm_3rd_sanctuary_guit.ogg", "castle_intro.ogg", "cliff_jump_ambience_nowind.ogg", "meeting_flower_upbeat_drum.ogg", "flowery_iog.ogg", "ch5_weird_monologue.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, snd_usefountain, "wind_highplace.ogg", "night_ambience.ogg", "deltarune_logo_ch5_itoki.ogg", "catti_confession.ogg", "bratty_confession.ogg", "birds_ch5.ogg", "ch5_intro_audio.ogg", snd_pink_stretch_2_troubled, snd_pink_stretch_2_fixed);

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, "strongwind_loop.ogg", "ch5_inversion_lake_chant.ogg");
    }
    if (_undertale == 1) // UNDERTALE
    {
        array_push(_song_array, "mus_story.ogg", "mus_menu0.ogg", "mus_menu1.ogg", "mus_menu2.ogg", "mus_menu3.ogg", "mus_menu4.ogg", "mus_menu5.ogg", "mus_menu6.ogg", "mus_flowey.ogg", "mus_toriel.ogg", "mus_ruins.ogg", "mus_options_fall.ogg", "mus_prebattle1.ogg", "mus_tension.ogg", "mus_battle1.ogg", "mus_ghostbattle.ogg", "mus_gameover.ogg", "mus_house1.ogg", "mus_house2.ogg", "mus_boss1.ogg", "muscle.ogg", "mus_papyrus.ogg", "mus_snowy.ogg", "mus_options_winter.ogg", "mus_dogsong.ogg", "mus_town.ogg", "mus_shop.ogg", "mus_papyrusboss.ogg", "mus_date.ogg", "mus_date_tense.ogg", "mus_date_fight.ogg", "mus_mysteriousroom2.ogg", mus_undynescary, "mus_undynetheme.ogg", "mus_waterfall.ogg", "mus_undynefast.ogg", "mus_waterquiet.ogg", "mus_musicbox.ogg", "mus_birdsong.ogg", "mus_dummybattle.ogg", "mus_napstahouse.ogg", "mus_race.ogg", "mus_temvillage.ogg", "mus_temshop.ogg", "mus_undynetruetheme.ogg", "mus_undyneboss.ogg", "mus_lab.ogg", "mus_mtgameshow.ogg", "mus_mettatonbattle.ogg", "mus_anothermedium.ogg", "mus_options_summer.ogg", "mus_battle2.ogg", "mus_hotel.ogg", "mus_hotel_battle.ogg", "mus_confession.ogg", "mus_news.ogg", "mus_news_battle.ogg", "mus_spider.ogg", "mus_wrongworld.ogg", "mus_operatile.ogg", "mus_sansdate.ogg", "mus_core.ogg", "mus_mettaton_ex", "mus_mettsad.ogg", "mus_endarea_parta.ogg", "mus_endarea_partb.ogg", "mus_chokedup.ogg", "mus_bergentruckung.ogg", "mus_vsasgore.ogg", "mus_z_ending.ogg", "mus_undynepiano.ogg", "mus_hereweare.ogg", "mus_amalgam.ogg", "mus_fallendown2.ogg", "mus_dontgiveup.ogg", "mus_xpart.ogg", "mus_a2.ogg", "mus_xpart_2.ogg", "mus_xpart_a.ogg", "mus_xpart_b.ogg", "mus_reunited.ogg", "mus_leave.ogg", "mus_express_myself.ogg", "mus_x_undyne.ogg", "mus_mettaton_neo.ogg", "mus_zz_megalovania.ogg", "mus_piano.ogg", "dogroom.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "mus_dance_of_dog.ogg", "mus_sigh_of_dog.ogg", "mus_kingdescription.ogg", "mus_star.ogg", "mus_ruinspiano.ogg");

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "mus_dogmeander.ogg", "mus_mystery.ogg", "mus_spoopy.ogg", "mus_spoopy_wave.ogg", "mus_spoopy_holiday.ogg", "mus_napstachords.ogg", "mus_oogloop.ogg", "mus_mettmusical1.ogg", "mus_mettmusical2.ogg", "mus_mettmusical3.ogg", "mus_mettmusical4.ogg", "mus_coretransition.ogg", "mus_mettafly.ogg", "mus_mettaton_pretransform.ogg", "mus_elevator_last.ogg", "mus_smallshock.ogg", "mus_barrier.ogg", "mus_yourbestfriend_3.ogg", "mus_f_intro.ogg", "mus_f_part1.ogg", "mus_f_part2.ogg", "mus_f_6s_1.ogg", "mus_f_6s_2.ogg", "mus_f_6s_3.ogg", "mus_f_6s_4.ogg", "mus_f_6s_5.ogg", "mus_f_6s_6.ogg", "mus_repeat_1.ogg", "mus_repeat_2.ogg", "mus_f_finale_1_l.ogg", "mus_f_finale_2.ogg", "mus_f_finale_3.ogg", "mus_xpart_back.ogg", "mus_cast_1.ogg", "mus_cast_2.ogg", "mus_cast_3.ogg", "mus_cast_4.ogg", "mus_cast_5.ogg", "mus_cast_6.ogg", "mus_cast_7.ogg", "mus_x_undyne_pre.ogg", "mus_snoresymphony.ogg", "mus_predummy.ogg", "coolbeat.ogg", "mus_f_saved.ogg", "mus_woofenstein_loop.ogg", "mus_toomuch.ogg", "mus_st_him.ogg");

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, "mus_f_alarm.ogg", "mus_zzz_c.ogg", "mus_zzz_c2.ogg", "mus_st_happytown.ogg", "mus_st_meatfactory.ogg", "mus_st_troubledingle.ogg");

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, "mus_f_part3.ogg", "mus_f_finale_1.ogg");

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, "abc_123_a.ogg", "mus_smile.ogg");
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
