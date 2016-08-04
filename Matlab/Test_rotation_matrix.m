clc
clear all
% /* Fill the rotation matrix, using Euler angles */
A =[];

M_PIf = pi;
x =  1 ;
y = -1 ;
z = 0 ;
p = [x,0,0;0,y,0;0,0,z];
p1 = [x,y,z]';
xAngle = -15; % roll
yAngle = 0; % pitch
zAngle = 0; % yaw


cx = cos(xAngle*M_PIf/180.0);
cy = cos(yAngle*M_PIf/180.0);
cz = cos(zAngle*M_PIf/180.0);

sx = sin(xAngle*M_PIf/180.0);
sy = sin(yAngle*M_PIf/180.0);
sz = sin(zAngle*M_PIf/180.0);

A(1,1) = cz*cy;
A(1,2) = cz*sy*sx-sz*cx; 
A(1,3) = cz*sy*cx+sz*sx;
A(2,1) = sz*cy;
A(2,2) = sz*sy*sx+cz*cx;
A(2,3) = sz*sy*cx-cz*sx;
A(3,1) = -sy;
A(3,2) = cy*sx;
A(3,3) = cy*cx;
p1
A*p1