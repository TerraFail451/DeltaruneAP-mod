/// PATCH

/// REPLACE
    if (global.is_console)
        c_var_instance(id, "border_change", true);
/// CODE
    c_var_instance(id, "border_change", true);
/// END

/// REPLACE
    if (border_val >= 1)
        border_change = false;
/// CODE
    if (border_val >= 1)
    {
        border_change = false;

        if (con == 5)
            con = -1;
    }
/// END