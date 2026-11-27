#load "../room_helper.csx"

void Load_room_dw_church_trueclimbadventure()
{
  var room = Data.Rooms.ByName("room_dw_church_trueclimbadventure");

  AddObjectToRoom(room, "obj_musicer_dw_church", 0, 0, 0, 1, 1);
}