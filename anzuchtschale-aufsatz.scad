use <blade.scad>


module top(width=74, length=144){
    height=2;
    wall=2;
    union(){
        difference(){
            cube([width, length, height]);
            translate([wall,wall,0]){
                cube([width-wall*2, length-wall*2, height]);    
            }
        }
    intersection(){
        cube([width, length, height]);
        for(i=[-10:14:140]){
            translate([0, i, 0]){
                rotate([0, 0, 15]){
                    blade(size=100);
                }
            }
        }
    }
    }
}

top();