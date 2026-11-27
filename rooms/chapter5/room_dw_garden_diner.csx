#load "../room_helper.csx"

void Load_room_dw_garden_diner()
{
  var room = Data.Rooms.ByName("room_dw_garden_diner");

  AddObjectToRoom(room, "obj_markerX", 740, 270, 5, 1, 1);
}