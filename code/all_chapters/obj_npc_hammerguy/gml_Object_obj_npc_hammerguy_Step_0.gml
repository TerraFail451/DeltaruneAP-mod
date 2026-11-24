/// PATCH .ignore if CHAPTER_1 || CHAPTER_3

/// REPLACE
    msgsetsubloc(0, "* (You got ~1!)/%", fusionResultName, "obj_npc_hammerguy_slash_Step_0_gml_251_0");
/// CODE
    msgsetloc(0, string("* (You got {0}!)/%", AP_get_location_reward_text(fusionResultName)));
    AP_sendLocation(fusionResultName);
/// END