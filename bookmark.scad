use <vendors/UtilitySCAD-R1/utility.scad>;

length = 100;
m = 0.1;
m_2 = m * 2;
spacing = 3;
width = 20;
height = 1;
spacer_w = 4;
text = "Here";


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
module spacer()
{
    cube([spacer_w,length - spacing * 2,height + m_2]);

}


module bookmark()
{
    difference()
    {
        cube([width,length,height]);
        translate([spacing,spacing,-m])
        {
            spacer();
        }
        translate([width - spacer_w - spacing,spacing,-m])
        {
            spacer();
        }
        translate([spacing,spacing,-m])
        {
            cube([width - (spacing * 2),spacer_w,height + m_2]);
        }
    }
}

bookmark();
title(text);