/// PATCH

/// PREPEND
var _spr = layer_sprite_create("DEBUG_ASSETS", 1323, 490, 2271);
layer_sprite_xscale(_spr, 2);
layer_sprite_yscale(_spr, 2);
/// END

/// AFTER
    if (layer_sprite_get_sprite(spritesArray[i]) == 3022)
        organiknpc = scr_makenpc_fromasset(spritesArray[i]);
/// CODE
    if (layer_sprite_get_sprite(spritesArray[i]) == 2271)
        organiknpc2 = scr_makenpc_fromasset(spritesArray[i]);
/// END
