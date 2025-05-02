difference(){
        cube([250,250,30]);
        translate([200,200,0])
        cylinder(h=150, r1=205, r2=205, center=false);

        translate([-1,200,0])
        cube([250,250,100]);

        translate([200,-1,0])
        cube([250,250,100]);
    }

    translate([larguraCaixa,0,0]) scale([-1,1,1]) difference() {
        cube([250,250,30]);
        translate([200,200,0])
        cylinder(h=150, r1=205, r2=205, center=false);

        translate([-1,200,0])
        cube([250,250,100]);

        translate([200,-1,0])
        cube([250,250,100]);
    }