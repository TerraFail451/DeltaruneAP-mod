/// PATCH

/// REPLACE
                snd_loop(snd_pink_stretch_2_troubled);
                snd_volume(snd_pink_stretch_2_troubled, 0, 0);
                snd_volume(snd_pink_stretch_2_troubled, 1, 90);
/// CODE
                if (random_song_1 == -1)
                {
                    audio_resume_sound(troubled_song);
                }
                else
                {
                    with (obj_archipelago_music_tracker)
                    {
                        resume_song(snd_pink_stretch_2_troubled);
                    }
                }

                snd_volume(troubled_song, 0, 0);
                snd_volume(troubled_song, 1, 90);
/// END

/// REPLACE
                snd_volume(snd_pink_stretch_2_troubled, 0, 90);
                snd_loop(snd_pink_stretch_2_fixed);
                snd_volume(snd_pink_stretch_2_fixed, 0, 0);
                snd_volume(snd_pink_stretch_2_fixed, 1, 90);
/// CODE
                snd_volume(troubled_song, 0, 90);

                if (random_song_2 == -1)
                {
                    audio_resume_sound(fixed_song);
                }
                else
                {
                    with (obj_archipelago_music_tracker)
                    {
                        resume_song(snd_pink_stretch_2_fixed);
                    }
                }

                snd_volume(fixed_song, 0, 0);
                snd_volume(fixed_song, 1, 90);
/// END