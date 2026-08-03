/// IMPORT
function snd_init(arg0)
{
    var _ignored = ["ch3_karaoke_no_guitar.ogg", "ch3_karaoke_full.ogg", "ch3-practice_song_noguit.ogg", "ch3-practice_song_combined.ogg", "tenna_battle.ogg", "tenna_battle_guitar.ogg", "ch3_tvtime.ogg", "ch3_tvtime_guitar.ogg", "board4_rhythm.ogg", "rhythm_knockdown_no_guit.ogg", "rhythm_knockdown_combined.ogg", "statue_level1.ogg", "statue_chord_basic.ogg", "statue_level2.ogg", "statue_level3.ogg", "statue_level4.ogg", "sound_battle_bg.ogg", "statue2_level1.ogg", "statue2_level2.ogg", "statue2_level3.ogg", "statue2_level4.ogg", "statue2_level5.ogg", "4rd_sanctuary.ogg", "4rd_sanctuary_noguit.ogg"];
    var _undertale = ["mus_story.ogg", "mus_menu0.ogg", "mus_menu1.ogg", "mus_menu2.ogg", "mus_menu3.ogg", "mus_menu4.ogg", "mus_menu5.ogg", "mus_menu6.ogg", "mus_flowey.ogg", "mus_toriel.ogg", "mus_ruins.ogg", "mus_options_fall.ogg", "mus_prebattle1.ogg", "mus_tension.ogg", "mus_battle1.ogg", "mus_ghostbattle.ogg", "mus_gameover.ogg", "mus_house1.ogg", "mus_house2.ogg", "mus_boss1.ogg", "mus_papyrus.ogg", "mus_snowy.ogg", "mus_options_winter.ogg", "mus_dogsong.ogg", "mus_town.ogg", "mus_shop.ogg", "mus_papyrusboss.ogg", "mus_date.ogg", "mus_mysteriousroom2.ogg", "mus_undynetheme.ogg", "mus_waterfall.ogg", "mus_undynefast.ogg", "mus_waterquiet.ogg", "mus_musicbox.ogg", "mus_birdsong.ogg", "mus_dummybattle.ogg", "mus_napstahouse.ogg", "mus_temvillage.ogg", "mus_temshop.ogg", "mus_undynetruetheme.ogg", "mus_undyneboss.ogg", "mus_lab.ogg", "mus_mtgameshow.ogg", "mus_mettatonbattle.ogg", "mus_anothermedium.ogg", "mus_options_summer.ogg", "mus_battle2.ogg", "mus_hotel.ogg", "mus_hotel_battle.ogg", "mus_news.ogg", "mus_news_battle.ogg", "mus_spider.ogg", "mus_wrongworld.ogg", "mus_operatile.ogg", "mus_sansdate.ogg", "mus_core.ogg", "mus_mettaton_ex", "mus_mettsad.ogg", "mus_endarea_parta.ogg", "mus_endarea_partb.ogg", "mus_chokedup.ogg", "mus_bergentruckung.ogg", "mus_vsasgore.ogg", "mus_z_ending.ogg", "mus_undynepiano.ogg", "mus_hereweare.ogg", "mus_amalgam.ogg", "mus_fallendown2.ogg", "mus_dontgiveup.ogg", "mus_xpart.ogg", "mus_a2.ogg", "mus_xpart_2.ogg", "mus_xpart_a.ogg", "mus_xpart_b.ogg", "mus_reunited.ogg", "mus_leave.ogg", "mus_express_myself.ogg", "mus_x_undyne.ogg", "mus_mettaton_neo.ogg", "mus_zz_megalovania.ogg", "mus_piano.ogg", "mus_dance_of_dog.ogg", "mus_sigh_of_dog.ogg", "mus_kingdescription.ogg", "mus_star.ogg", "mus_ruinspiano.ogg", "mus_dogmeander.ogg", "mus_mystery.ogg", "mus_spoopy.ogg", "mus_spoopy_wave.ogg", "mus_spoopy_holiday.ogg", "mus_napstachords.ogg", "mus_oogloop.ogg", "mus_mettmusical1.ogg", "mus_mettmusical2.ogg", "mus_mettmusical3.ogg", "mus_mettmusical4.ogg", "mus_coretransition.ogg", "mus_mettafly.ogg", "mus_mettaton_pretransform.ogg", "mus_elevator_last.ogg", "mus_smallshock.ogg", "mus_barrier.ogg", "mus_yourbestfriend_3.ogg", "mus_f_intro.ogg", "mus_f_part1.ogg", "mus_f_part2.ogg", "mus_f_6s_1.ogg", "mus_f_6s_2.ogg", "mus_f_6s_3.ogg", "mus_f_6s_4.ogg", "mus_f_6s_5.ogg", "mus_f_6s_6.ogg", "mus_repeat_1.ogg", "mus_repeat_2.ogg", "mus_f_finale_1_l.ogg", "mus_f_finale_2.ogg", "mus_f_finale_3.ogg", "mus_xpart_back.ogg", "mus_cast_1.ogg", "mus_cast_2.ogg", "mus_cast_3.ogg", "mus_cast_4.ogg", "mus_cast_5.ogg", "mus_cast_6.ogg", "mus_cast_7.ogg", "mus_x_undyne_pre.ogg", "mus_snoresymphony.ogg", "mus_predummy.ogg", "mus_f_saved.ogg", "mus_woofenstein_loop.ogg", "mus_toomuch.ogg", "mus_st_him.ogg", "mus_f_alarm.ogg", "mus_zzz_c.ogg", "mus_zzz_c2.ogg", "mus_st_happytown.ogg", "mus_st_meatfactory.ogg", "mus_st_troubledingle.ogg", "mus_f_part3.ogg", "mus_f_finale_1.ogg", "abc_123_a.ogg", "mus_smile.ogg"];

    if (global.AP_randomize_music > 0)
    {
        if (!variable_global_exists("unrandomized_current_song"))
            global.unrandomized_current_song = "nosong.ogg";
        if (!variable_global_exists("randomized_current_song"))
            global.randomized_current_song = "nosong.ogg";
        
        if (global.unrandomized_current_song != arg0)
        {
            if ((!array_contains(_ignored, arg0)) && (array_contains(global.AP_randomized_music_list, arg0)));
                var _song = AP_get_random_song(arg0);
            else
                var _song = arg0;
            
            global.unrandomized_current_song = arg0;
            global.randomized_current_song = _song;
        }
        else
        {
            var _song = global.randomized_current_song;
        }
    }
    else
    {
        var _song = arg0;
    }

    if (!is_string(_song))
    {
        global.randomized_embedded_song = audio_play_sound(_song, 50, 1);
        return "nosong.ogg";
    }

    if (variable_global_exists("randomized_embedded_song"))
        snd_stop(global.randomized_embedded_song);
    
    if (array_contains(_undertale, _song))
        var dir = "../Undertale/";
    else
        var dir = "mus/";
    
    if (global.launcher)
    {
        if (array_contains(_undertale, _song))
            dir = working_directory + "../../Undertale/";
        else
            dir = working_directory + "../mus/";
    }
    
    initsongvar = dir + _song;
    _mystream = audio_create_stream(initsongvar);
    _astream = instance_create(0, 0, obj_astream);
    _astream.mystream = _mystream;
#if !CHAPTER_1
    _astream.songname = _song;
#endif
    return _mystream;
}
