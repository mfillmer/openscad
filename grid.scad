module field(height=5, size=10, rotate=0, wall_strength=1) { 

    cube([size, wall_strength, height]);
    cube([wall_strength, size, height]);
    translate([0,size-wall_strength, 0]){cube([size, wall_strength, height]);}
    translate([size-wall_strength, 0, 0]){cube([wall_strength, size, height]);}
    translate([rotate*size, 0, 0]){
        rotate(rotate*90,[0, 0, size/2]) {
            intersection() {
                cube([size, size, height]);
                for(i=[0:1:size]){
                    translate([i-0.5, 0, 0]){
                        cube([0.75, size, height]);
                    }
                }
            }
        }
    }
}

module grid(width=10, length=20, height=5, fieldsize=10, wall_strength=2){
    union(){
        cube([width, wall_strength, height]);
        cube([wall_strength, length, height]);
        translate([0,length-wall_strength, 0]){cube([width, wall_strength, height]);}
        translate([width-wall_strength, 0, 0]){cube([wall_strength, length, height]);}
        for(x=[0:fieldsize:width-fieldsize]){
            for(y=[0:fieldsize:length-fieldsize]){
                translate([x,y,0]){
                    field(height, fieldsize, rotate=(y+x)%2);
                }
            }
        }
    } 
}
