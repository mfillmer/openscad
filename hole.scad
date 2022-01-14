module hole(size=5, height=5){
    $fn = 8;
    difference(){
        cube([size, size, height]);
        translate([size/2, size/2, 0]) {   
        cylinder(r=size/100*90/2, h=height, center=false);
        }
    }
}