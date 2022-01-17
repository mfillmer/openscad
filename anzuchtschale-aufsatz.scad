use <prism.scad>


module top(width=80, length=144){
    height=2;
    wall_side=3;
    wall=2;
    union(){
        difference(){
            cube([width, length, height+2]);
            translate([wall_side,wall,0]){
                cube([width-wall_side*2, length-wall*2, height+2]);    
            }
            translate([wall_side,0,2]){
                cube([width-wall_side*2, length, height+2]);    
            }
        }
        intersection(){
            cube([width, length, height]);
            for(i=[-5:14:140]){
                translate([0, i, 2]){
                    rotate([180, 0, 15]){
                        prism();
                    }
                }
            }
        }
    }
}

    top();