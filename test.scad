include <prism.scad>
union(){
for(i = [6:12:156]){
    translate([0, i, 0]){
        prism(10, 170);
    }
}
}