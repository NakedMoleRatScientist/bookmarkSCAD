use <vendors/UtilitySCAD-R1/utility.scad>;

$fa = 1;
$fs = 0.1;

length = 50;
m = 0.1;
spacing = 2;
width = 20;

module title(text)
{
    move_y(length)
    {
        cube([width,15,1]);
    }
    translate([0,length + 5,0])
    {
        resize([width - 1,10,0])
        {
            linear_extrude(2)
            {
                text(text,font="Liberation Sans:style=Bold");
            }
        }
    }
}


difference()
{
    cube([width,length,1]);
    r = 2.2;
    translate([r + 1,r + 1,-0.1])
    {
        cylinder(2,r,r);
    }
    translate([r + 1,r + 1 + 19,-0.1])
    {
        cylinder(2,r,r);
    }
}

title("Here");