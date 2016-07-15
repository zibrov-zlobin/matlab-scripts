p = who('d*');
for k = 1:length(p)
    plotme2D(eval(p{k}),p{k});
    %myfun(p{k});
end
