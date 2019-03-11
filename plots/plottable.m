clear all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% legs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
x=[0 1 1 0 0;0 1 1 0 0];
y=[0 0 1 1 0;0 0 1 1 0];
z=[0 0 0 0 0;2 2 2 2 2];
z_surface = [2 2 2 2 2;2.5 2.5 2.5 2.5 2.5 ];

p=surf(x,y,z);hold on;set(p,'EdgeColor','none');
p=surf(x+5,y,z);set(p,'EdgeColor','none');
p=surf(x,y+5,z);set(p,'EdgeColor','none');
p=surf(x+5,y+5,z);set(p,'EdgeColor','none');
p=surf(x*6,y*6,z_surface,z);set(p,'EdgeColor','none');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% This code snippet handles veiw from below %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
x=[0 6 6 0 0];
y=[0 0 6 6 0];
z=[2 2 2 2 2];
fill3(x,y,z,'black');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Top %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
x=[0 1 1 0];
x=repmat(x,6,1);
x=bsxfun(@plus,x,repmat([0:5]',1,4))';
x=reshape(x,24,1);
x=repmat(x,6,1);

y=[0 0 1 1];
y=repmat(y,1,6);
y=bsxfun(@plus,y,repmat([0:5]',1,24))';
y=reshape(y,144,1);


faces=[1:144];
faces=reshape(faces,4,36)';
z=ones(size(x));
cdata=repmat(eye(2),3,3);
cdata=reshape(cdata,36,1);
vert=[x y 2.5*ones(size(x))];
colormap([0 0 0;1 1 1]);
p=patch('Vertices',vert,'Faces',faces);
set(p,'FaceColor','flat',...
'FaceVertexCData',cdata,...
'CDataMapping','scaled',...
'EdgeColor','none');



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% you can remove below code if you want %%%%%%%%%%%
%%%%%%% handles yelow background; showing graph %%%%%%%%%
%%%%%%% turning off grid and axis for 3D object view %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
whitebg('y');
shg;
grid off; axis off


