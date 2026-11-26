/// IMPORT
ossafe_ini_open("true_config.ini");
ini_write_real("MICROPHONE", "MICROPHONE", global.microphone);
ini_write_real("MICROPHONE", "RIGHT_CLICK_MIC", global.right_click_mic);
ini_write_real("MICROPHONE", "MIC_SENSITIVITY", global.mic_sensitivity);
ossafe_ini_close();
ossafe_savedata_save();
