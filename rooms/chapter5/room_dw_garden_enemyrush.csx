#load "../room_helper.csx"

void Load_room_dw_garden_enemyrush()
{
  var room = Data.Rooms.ByName("room_dw_garden_enemyrush");

  AddObjectToRoom(room, "obj_markerX", 660, 250, 14, 1, 1);
}