#load "../room_helper.csx"

void Load_room_dw_church_biblioxencounter()
{
  var room = Data.Rooms.ByName("room_dw_church_biblioxencounter");

  AddObjectToRoom(room, "obj_musicer_dw_church", 0, 0, 2, 1, 1);
}