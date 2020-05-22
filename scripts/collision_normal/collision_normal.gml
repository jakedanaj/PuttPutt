/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 076D1663
/// @DnDArgument : "code" "/// collision_normal(x1,y1,obj [,rad [,res]])$(13_10)//$(13_10)//  Returns a 2D "surface normal" (in degrees) at a given point $(13_10)//  on or near an instance detected within a circular test area.$(13_10)//  Makes approximately pi*(rad*rad)/(res*res) collision calls.$(13_10)//  If no collision is found, (-1) is returned.$(13_10)//$(13_10)//      x1,y1       point on the surface, real$(13_10)//      obj         object or instance (or all), real$(13_10)//      rad         radius of test area (default 4), real$(13_10)//      res         resolution of test (default 1), real$(13_10)//$(13_10)/// GMLscripts.com/license$(13_10){$(13_10)    var xx  = argument[0];$(13_10)    var yy  = argument[1];$(13_10)    var obj = argument[2];$(13_10)    var rad = 4;$(13_10)    var res = 1;$(13_10)    if (argument_count > 3) rad = argument[3];$(13_10)    if (argument_count > 4) res = argument[4];$(13_10)    if (rad <= 0) rad = 4;$(13_10)    if (res <= 0) res = 1;$(13_10)    var nx = 0;$(13_10)    var ny = 0;$(13_10)    if (collision_circle(xx, yy, rad, obj, true, true)) {$(13_10)        for (var j=res; j<=rad; j+=res) {$(13_10)            for (var i=0; i<rad; i+=res) {$(13_10)                if (point_distance(0, 0, i, j) <= rad) {$(13_10)                    if (!collision_point(xx+i, yy+j, obj, true, true)) { nx += i; ny += j; }$(13_10)                    if (!collision_point(xx+j, yy-i, obj, true, true)) { nx += j; ny -= i; }$(13_10)                    if (!collision_point(xx-i, yy-j, obj, true, true)) { nx -= i; ny -= j; }$(13_10)                    if (!collision_point(xx-j, yy+i, obj, true, true)) { nx -= j; ny += i; }$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)        if (nx == 0 && ny == 0) return (-1);$(13_10)        return point_direction(0, 0, nx, ny);$(13_10)    }else{$(13_10)        return (-1);$(13_10)    }$(13_10)}"
/// collision_normal(x1,y1,obj [,rad [,res]])
//
//  Returns a 2D "surface normal" (in degrees) at a given point 
//  on or near an instance detected within a circular test area.
//  Makes approximately pi*(rad*rad)/(res*res) collision calls.
//  If no collision is found, (-1) is returned.
//
//      x1,y1       point on the surface, real
//      obj         object or instance (or all), real
//      rad         radius of test area (default 4), real
//      res         resolution of test (default 1), real
//
/// GMLscripts.com/license
{
    var xx  = argument[0];
    var yy  = argument[1];
    var obj = argument[2];
    var rad = 4;
    var res = 1;
    if (argument_count > 3) rad = argument[3];
    if (argument_count > 4) res = argument[4];
    if (rad <= 0) rad = 4;
    if (res <= 0) res = 1;
    var nx = 0;
    var ny = 0;
    if (collision_circle(xx, yy, rad, obj, true, true)) {
        for (var j=res; j<=rad; j+=res) {
            for (var i=0; i<rad; i+=res) {
                if (point_distance(0, 0, i, j) <= rad) {
                    if (!collision_point(xx+i, yy+j, obj, true, true)) { nx += i; ny += j; }
                    if (!collision_point(xx+j, yy-i, obj, true, true)) { nx += j; ny -= i; }
                    if (!collision_point(xx-i, yy-j, obj, true, true)) { nx -= i; ny -= j; }
                    if (!collision_point(xx-j, yy+i, obj, true, true)) { nx -= j; ny += i; }
                }
            }
        }
        if (nx == 0 && ny == 0) return (-1);
        return point_direction(0, 0, nx, ny);
    }else{
        return (-1);
    }
}