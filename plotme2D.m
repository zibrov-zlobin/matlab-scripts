function plotme2D(dataset, varname )
s=varname;
name = strcat(s, '.png');
angledeg = 0;


name = strcat(s,'.png');

l= max(dataset(:,1))+1;
cap=reshape(dataset(:,5),l,[]);
dis=reshape(dataset(:,6),l,[]);
n0=reshape(dataset(:,8),l,[]);
p0=reshape(dataset(:,7),l,[]); % be sure p0 doesn't have a -

caprot=cos(angledeg*pi/180)*cap+sin(angledeg*pi/180)*dis;
disrot=cos(angledeg*pi/180)*dis-sin(angledeg*pi/180)*cap;

n1=1;
n2=l;
std(disrot(:))
toplot=caprot;

map=zeros(65,3);
for i=1:32
map(i,1)=(i-1)/32;
map(i,2)=(i-1)/32;
map(i,3)=1;
end
for i=33:65
map(i,1)=1;
map(i,2)=1-(i-33)/32;
map(i,3)=1-(i-33)/32;
end
%map=colormap([0 1 1;  0 0 1; 0 0 0; 1 0 0; 1 1 0]);
clear i

figure('Visible','off') %remove to be able to see the image 
%figure('Position', [10,10,1200,1200]);
%figure
hold all
h=pcolor(n0(n1:n2,:),p0(n1:n2,:),toplot(n1:n2,:));
 shading flat
title('Cap')
xlabel('n0/c, volts') % x-axis label
ylabel('p0/c, volts') % y-axis label
colorbar;
colormap(cm_bipolar);
axis([min(min(n0)) max(max(n0)) min(min(p0)) max(max(p0))]);
axHdl = get(h,'Parent'); %get the axes parent of the surface
%set(gca, 'CLim', [1.08, 1.208]);
fig = gcf;
fig.PaperPositionMode = 'auto';

saveas(gcf, name)

toplot=disrot;
figure('Visible','off')
%figure('Position', [10,10,1200,1200]);

hold all 
h=pcolor(n0(n1:n2,:),p0(n1:n2,:),toplot(n1:n2,:));
 shading flat
title('Dis')
xlabel('n0/c, volts') % x-axis label
ylabel('p0/c, volts') % y-axis label
colorbar;
colormap(cm_bipolar);
axis([min(min(n0)) max(max(n0)) min(min(p0)) max(max(p0))]);
axHdl = get(h,'Parent'); %get the axes parent of the surface
%set(gca, 'CLim', [-.175, -0.160]);

clear l
clear n1
clear n2
clear n0
clear p0
clear n0 
clear p0
clear toplot
clear ww
clear range
clear cLim
clear axHdl
clear h
clear cap
clear dis