/// PATCH

/// REPLACE
scr_musicer("cliff.ogg", 1);
/// CODE
instance_create_layer(0, 0, "OBJECTS_MAIN", obj_musicer_room, 
{
    mysong: "cliff.ogg"
});
/// END
