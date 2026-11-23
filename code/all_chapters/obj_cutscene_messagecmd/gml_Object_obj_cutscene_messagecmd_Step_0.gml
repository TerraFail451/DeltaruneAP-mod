/// IMPORT .ignore if !CHAPTER_2 && !CHAPTER_3
var _msgno = -1;

with (obj_cutscene_master)
{
    if (i_ex(mydialoguer))
    {
        if (mydialoguer.active == 1 && i_ex(mydialoguer.writer))
            _msgno = mydialoguer.writer.msgno;
    }
}

if (_msgno < 0)
    exit;

while (_msgno == command_num[i])
{
    _c = command[i];
    scr_cutscene_commands();
    i++;
    
    if (i >= array_length(command))
    {
        instance_destroy();
        break;
    }
}
