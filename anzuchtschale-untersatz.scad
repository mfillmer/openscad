use <drawer.scad>

union(){
    
drawer(74, 144, 45, wall_strength=2);
translate([2,2,0]){
    
drawer(70, 140, 30, wall_strength=4);
}
}