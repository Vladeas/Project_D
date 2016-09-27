//argument0 = x1
//argument1 = y1
//argument2 = x2
//argument3 = y2
//argument4 = wallvect object index
with (wallvect[argument4])
{
    //store variables
    x1=argument0;
    y1=argument1;
    x2=argument2;
    y2=argument3;
    
    physics_remove_fixture(id,fixb);//remove previous physical properties
    
    //create new properties
    fix=physics_fixture_create();
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix,x1,y1);
    physics_fixture_add_point(fix,x2,y1);
    physics_fixture_add_point(fix,x2,y2);
    physics_fixture_add_point(fix,x1,y2);
    physics_fixture_set_kinematic(fix);
    physics_fixture_set_density(fix,0);
    physics_fixture_set_friction(fix,0);
    
    
    fixb=physics_fixture_bind(fix,id);//bind physical properties to the wall
    
    physics_fixture_delete(fix);//free memory of physical properties variable
}
