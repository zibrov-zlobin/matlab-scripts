function handles = saveRasterImages(fdir, fname, hfig)

if nargin<3
    hfig = gcf;
end

hfig = copy(hfig);

set(hfig.Children,'Units','inches');
set(hfig,'Units','inches');
set(hfig, 'Color', 'None')

figPos = hfig.Position;

handles = [findall(hfig, 'type', 'Image'), findall(hfig, 'type', 'Surface')];

for i=1:numel(handles)
    h = handles(i);
    hax = ancestor(h, 'Axes');
    axPos = hax.Position;
    
    set(h, 'visible', 'off');
    saveas(gcf, strcat(fdir, '/', fname, datestr(clock,'ddmmyyyyHHMMSSAM'), '_axes.pdf'));
    set(h, 'visible', 'on');
    
    child = [h.Parent.Children; h.Children];
    child = child((child ~= h));
    set(child, 'visible', 'off');
    
    set(hfig, 'Position', figPos.*[1, 1, 0, 0] + axPos.*[0, 0, 1, 1]);
    set(hax, 'Position', axPos.*[0, 0, 1, 1]);
    print('-dpng','-cmyk','-r300',[fdir, '/', fname,datestr(clock,'ddmmyyyyHHMMSSAM')]);
       
end
close(hfig);
end

