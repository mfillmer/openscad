use <prism.scad>


module top(width=70, length=140){
    height=13;
    wall_side=3;
    wall=2;
    union(){
        difference(){
            cube([width, length, height]);
            translate([wall_side,wall,0]){
                cube([width-wall_side*2, length-wall*2, height]);    
            }
            translate([wall_side,0,2]){
                cube([width-wall_side*2, length, height]);    
            }
        }
        intersection(){
            cube([width, length, 2]);
            for(i=[-5:14:150]){
                translate([0, i, 0]){
                    rotate([0, 0, -15]){
                        prism();
                    }
                }
            }
        }
    }
}

top();