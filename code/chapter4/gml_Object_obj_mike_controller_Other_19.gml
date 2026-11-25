/// IMPORT
if (ossafe_file_exists("true_config.ini"))
{
    ini_ex = 1;
    iniread = ossafe_ini_open("true_config.ini");
    global.microphone = ini_read_real("MICROPHONE", "Microphone", 0);
    global.right_click_mic = ini_read_real("MICROPHONE", "right_click_mic", 0);
    global.mic_sensitivity = ini_read_real("MICROPHONE", "Mic Sensitivity", 0.5);
    ossafe_ini_close();
    ossafe_savedata_save();
}
