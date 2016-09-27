//reset wall position on each window resize
wall_gen(0,0,wall_W,room_height,0);
wall_gen(room_width-wall_W,0,room_width,room_height,1);
wall_gen(wall_W,0,room_width-wall_W,wall_W,2);
wall_gen(wall_W,room_height-wall_W,room_width-wall_W,room_height,3);
