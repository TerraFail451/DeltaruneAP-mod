#load "../room_helper.csx"

void Load_room_dw_church_darkmaze()
{
  var room = Data.Rooms.ByName("room_dw_church_darkmaze");

  AddObjectToRoom(room, "obj_musicer_dw_church", 0, 0, 1, 1, 1);
  AddObjectToRoom(room, "obj_markerX", 1340, 840, 2, 1, 1);
}