
module cut(size=30, angle=30, width=3){
    difference(){
        cube([size, width, 1]);
        rotate([angle, 0, 0]) {   
            cube([size, width, 1]);
        }        
    }
}

module blade(size=30, angle=30, width=6){
    union(){
        cut(size, angle, width/2);
        translate([0, width, 0]){
            mirror([0, 1, 0]) {
                cut(size, angle, width/2);
            }
        }
    }
}

