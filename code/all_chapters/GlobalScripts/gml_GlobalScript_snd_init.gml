/// PATCH

/// REPLACE
function snd_init(arg0)
{
/// CODE
function snd_init(arg0, arg1 = true)
{
  if (global.AP_ost_shuffle && arg1)
  {
    global.AP_debug_last_shuffled_ost = arg0
    if (variable_struct_exists(global.AP_ost_mapping, arg0))
    {
      arg0 = variable_struct_get(global.AP_ost_mapping, arg0)
    }
    global.AP_debug_last_shuffled_ost_result = arg0
  }

  if (scr_debug())
  {
    if (file_exists("debug.snd_init"))
    {
      var _file = file_text_open_read("debug.snd_init");
      var _line = file_text_readln(_file);

      if (_line != "")
        arg0 = _line;

      file_text_close(_file);
    }
  }
/// END

#if CHAPTER_1
/// AFTER
    _astream.mystream = _mystream;
/// CODE
    _astream.songname = arg0;
/// END
#endif