/// IMPORT
function snd_free_all()
{
    with (obj_astream)
        instance_destroy();
    
    with (obj_setup_music_loop_track)
        instance_destroy();
    
    if (instance_exists(obj_archipelago_music_tracker))
        instance_destroy();
}

function sound_free_all()
{
    snd_free_all();
}
