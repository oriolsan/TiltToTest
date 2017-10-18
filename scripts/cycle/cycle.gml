///cycle (value, min, max)

argument0 = (argument0 - argument1) mod (argument2-argument1);
if (argument0<0) return argument0+argument2;
return argument0+argument1;
