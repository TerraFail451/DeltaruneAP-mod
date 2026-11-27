#load "../room_helper.csx"

void Load_room_dw_church_intro_guei()
{
  var room = Data.Rooms.ByName("room_dw_church_intro_guei");

  AddObjectToRoom(room, "obj_musicer_dw_church", 0, 0, 4, 1, 1);
}