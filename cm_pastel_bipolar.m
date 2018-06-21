function cm_pastel_bipolar = cm_pastel_bipolar()
lsp = 50;
cmap = zeros(lsp*4-3, 3);

cmap(1:lsp, 1) = linspace(0/254, 5/254, lsp);
cmap(1:lsp, 2) = linspace(254/254, 155/254, lsp);
cmap(1:lsp, 3) = linspace(230/254, 210/254, lsp);

cmap(lsp:2*lsp-1, 1) = linspace(5/254, 50/254, lsp);
cmap(lsp:2*lsp-1, 2) = linspace(155/254, 50/254, lsp);
cmap(lsp:2*lsp-1, 3) = linspace(210/254, 50/254, lsp);

cmap(2*lsp-1:3*lsp-2, 1) = linspace(50/254, 235/254, lsp);
cmap(2*lsp-1:3*lsp-2, 2) = linspace(50/254, 205/254, lsp);
cmap(2*lsp-1:3*lsp-2, 3) = linspace(50/254, 90/254, lsp);

cmap(3*lsp-2:end, 1) = linspace(235/254, 240/254, lsp);
cmap(3*lsp-2:end, 2) = linspace(205/254, 90/254, lsp);
cmap(3*lsp-2:end, 3) = linspace(90/254, 105/254, lsp);

cm_pastel_bipolar = cmap;
end