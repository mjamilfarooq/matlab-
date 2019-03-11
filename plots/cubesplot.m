clear all;
clc;

x=[0 1 1 0 0;0 1 1 0 0];
y=[0 0 1 1 0;0 0 1 1 0];
z=[0 0 0 0 0;2 2 2 2 2];
z_surface = [2 2 2 2 2;2.5 2.5 2.5 2.5 2.5 ];

surf(x,y,z);hold on;
surf(x+5,y,z);hold on;
surf(x,y+5,z);hold on;
surf(x+5,y+5,z);hold on;
surf(x*6,y*6,z_surface,z);hold on;

x=linspace(0,6,20);
x=meshgrid(x);
y=x';


C=ones(1,441);
C(1:2:441)=0;
C=vec2mat(C,21,21);
C=C(1:20,1:20);
C=C;
colormap([0  0  0; 1  1  1]);

surf(x,y,2.5*ones(size(x)),C);

x=[0 6 6 0 0];
y=[0 0 6 6 0];
z=[2 2 2 2 2];
whitebg('y');
fill3(x,y,z,'black');
% mesh(x,y,2*ones(size(x)),ones(size(x)));
shg;
grid off; axis off
%%


x=[0 1 1 0 1 2 2 1 2 3 3 2 3 4 4 3 4 5 5 4 5 6 6 5];
y=[0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
x=[x x x x x x ]';
y=[y 1+y 2+y 3+y 4+y 5+y]';
faces=[1:144];
faces=reshape(faces,4,36)';
z=ones(size(x));
cdata=randi(100,1,36)';
% x=[0:1:6];
% x=meshgrid(x);
% y=x';
% x=reshape(x,49,1);
% y=reshape(y,49,1);
vert=[x y 2.5*ones(size(x))];

p=patch('Vertices',vert,'Faces',faces);
set(p,'FaceColor','flat',...
'FaceVertexCData',cdata,...
'CDataMapping','scaled');
