#load "../room_helper.csx"

void Load_room_dw_church_turtles()
{
  var room = Data.Rooms.ByName("room_dw_church_turtles");

  AddObjectToRoom(room, "obj_musicer_dw_church", 0, 0, 1, 1, 1);
}