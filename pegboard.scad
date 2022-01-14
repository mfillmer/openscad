use <./hole.scad>

module pegboard(length=10, width=20, height=5, holesize=5){
    union(){
        for(y =[0:holesize:length-holesize]){
            for (x=[0:holesize:width-holesize]) {
                translate([x, y, 0]) {    
                    hole(holesize);
                }
            }
        }
    }
}