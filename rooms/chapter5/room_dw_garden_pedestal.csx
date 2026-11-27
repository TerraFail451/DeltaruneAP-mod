#load "../room_helper.csx"

void Load_room_dw_garden_pedestal()
{
  var room = Data.Rooms.ByName("room_dw_garden_pedestal");

  AddObjectToRoom(room, "obj_markerX", 300, 220, 3, 1, 1);
}