/// IMPORT
ossafe_ini_open("true_config.ini");
ini_write_real("MICROPHONE", "Microphone", global.microphone);
ini_write_real("MICROPHONE", "right_click_mic", global.right_click_mic);
ini_write_real("MICROPHONE", "Mic Sensitivity", global.mic_sensitivity);
ossafe_ini_close();
ossafe_savedata_save();
