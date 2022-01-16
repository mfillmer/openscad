module drawer(width=10, length=20, height=5, wall_strength=2){
    difference(){
        cube([width, length, height]);
        translate([wall_strength, wall_strength, wall_strength]){
            cube([width-wall_strength*2, length-wall_strength*2, height]);
        }
    }
}