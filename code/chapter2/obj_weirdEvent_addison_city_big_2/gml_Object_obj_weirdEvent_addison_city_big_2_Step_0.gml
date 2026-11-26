/// PATCH

/// REPLACE
    c_speaker("no_name");
    c_msgsetloc(0, "* If you're something else^1, maybe a Dating Shoes isn't right...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0");
    c_msgnextloc("* Maybe I could interest you in a FreezeRing?/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_29_0");
    c_talk_wait();
/// CODE
    c_speaker("no_name");
    c_msgsetloc(0, "* If you're something else^1, maybe a Dating Shoes isn't right...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0");
    c_msgnext(string("* Maybe I could interest you in {0}?/%", AP_get_location_reward_text(112)));
    c_talk();
    c_wait_box(1);
    c_customfunc(function()
    {
        AP_sendHint(112);
    });
    c_wait_talk();
/// END

/// REPLACE
    c_msgsetloc(0, "\\E2* Huh...? A ring...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_44_0");
    c_msgnextloc("\\E8* Faha, sorry, I don't think WE need something like that!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* C'mon, angel! You can't get stronger without good equipment!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0");
    c_facenext("noelle", "D");
    c_msgnextloc("\\E1* Stronger...? R-right, I guess that's how it works here.../%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0");
/// CODE
    apdata = AP_get_location_reward_data(112)
    c_msgset(0, "\\E2* Huh...?/");
    c_msgnextloc("\\E8* Faha, sorry, I don't think WE need something like that!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0");
    c_facenext("no_name", 0);
    if (apdata.playerName = "Yourself")
    {
        c_msgnextloc("* C'mon, angel! You can't get stronger without good equipment!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0");
        c_facenext("noelle", "D");
        c_msgnextloc("\\E1* Stronger...? R-right, I guess that's how it works here.../%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0");
    }
    else
    {
        c_msgnext("* C'mon, angel! You're not the only ones who need to get stronger!/");
        c_facenext("noelle", "D");
        c_msgnext("\\E1* Stronger...? R-right, I guess that's how it works here.../");
        c_msgnext("\\E2* (Wait^1, what do you mean we're not the only ones^1? Who else besides us?)/%");
    }
/// END

/// REPLACE
        msgsetloc(0, "* (You got the FreezeRing.)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0");
/// CODE
        AP_sendLocation(112);
        msgsetloc(0, string("* (You got {0}.)/%", AP_get_location_reward_text(112)), "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0");
/// END

/// REPLACE
    scr_weaponget(22);
/// CODE
/// END

/// REPLACE
        msgnextloc("\\E3* (No^1, they..^1. they must have given it to us. The ring.)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_119_0");
/// CODE
        msgnext("\\E3* (No^1, they..^1. they must have given it to us. The thing.)/");
/// END